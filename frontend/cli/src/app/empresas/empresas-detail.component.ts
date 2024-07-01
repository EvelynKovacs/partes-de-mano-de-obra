import { UpperCasePipe, Location, CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { Empresa } from './empresa';
import { ActivatedRoute, Router } from '@angular/router';
import { EmpresaService } from './empresa.service';
import { ModalService } from '../modal/modal.service';




@Component({
  selector: 'app-empresas-detail',
  standalone: true,
  imports: [UpperCasePipe, FormsModule, CommonModule, NgbTypeaheadModule],
  templateUrl: 'empresas-detail.component.html',
  styleUrls: ["./empresas-detail.component.css"],


})


export class EmpresasDetailComponent {
  empresa!: Empresa;
  searching: boolean = false;
  searchFailed: boolean = false;
  empresaExistente!: Empresa;
  msjError = "";




  constructor(
    private route: ActivatedRoute,
    private empresaService: EmpresaService,
    private location: Location,
    private modalService: ModalService,

  ) { }


  goBack(): void {
    this.location.back();
  }


  save(): void {
    if(this.isCuitValid(this.empresa.cuit)){
      
    this.empresaService.save(this.empresa).subscribe(dataPackage => {
      if (dataPackage.status === 200) {
        this.empresa = <Empresa>dataPackage.data;
        this.goBack();
      } else {
        this.msjError = <string><unknown>dataPackage.data;
        this.modalService.error("Error", this.msjError);
      }
    });
  }
  else{
    this.modalService.error("Error", "Ingrese correctamente el CUIT, debe comenzar con 20, 23, 24 o 27 y tener 11 números");
  }
    
  }

  isAnyFieldRequiredMissing(): boolean {
    return !this.empresa.name || !this.empresa.cuit;
  }


  applyCUITMask(cuit: string): string {

    // Eliminar caracteres no numéricos
    cuit = cuit.replace(/\D/g, '');

    // Aplicar la máscara
    let maskedCuit = '';
    for (let i = 0; i < cuit.length; i++) {
      if (i === 2 || i === 10) {
        maskedCuit += '-';
      } else if (i === 11) {
        maskedCuit += '-';
      }
      maskedCuit += cuit[i];
    }
    return maskedCuit;
  }

  showCUITErrorMessage(event: Event): void {
  const cuit = (event.target as HTMLInputElement).value;
  if (!this.isCuitValid(cuit)) {
    alert('El CUIT debe comenzar con 20, 23, 24 o 27');
  }
}

isCuitValid(cuit: string): boolean {
  cuit = cuit.replace(/-/g, '');

  const regexCuit = /^(20|23|24|27)\d{8}\d{1}$/;
  return regexCuit.test(cuit);
}
  get(): void {
    const id = this.route.snapshot.paramMap.get('id')!;
    if (id === 'Nueva') {
      this.empresa = <Empresa>{};
    } else {
      this.empresaService.get(parseInt(id!)).subscribe(dataPackage => this.empresa = <Empresa>dataPackage.data);
    }
  }

  resultFormat(value: any) {
    return value.type;
  }
  inputFormat(value: any) {
    return value ? value.type : null;
  }

  ngOnInit() {
    this.get();

  }


}
