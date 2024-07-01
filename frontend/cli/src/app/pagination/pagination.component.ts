import { CommonModule } from '@angular/common';
import { Component, EventEmitter, Input, Output, SimpleChanges } from '@angular/core';

@Component({
  selector: 'app-pagination',
  standalone: true,
  imports: [CommonModule],
  template: `
     <nav aria-label="Page navigation">
  <ul class="pagination pagination-centered" style="margin: 0; padding: 0;">
    <li class="page-item">
      <a class="page-link" (click)="onPageChange(-2)" >&laquo;</a>
    </li>
    <li class="page-item">
      <a class="page-link" (click)="onPageChange(-1)" >&lsaquo;</a>
    </li>
    <ng-container *ngFor="let t of visiblePages">
      <li *ngIf="t === '...' else notEllipsis" class="page-item">
        <a class="page-link disabled">...</a>
      </li>
      <ng-template #notEllipsis>
        <li [ngClass]="t === currentPage ? 'active page-item' : 'page-item'">
          <a class="page-link" (click)="onPageChange(t)" >{{ t }}</a>
        </li>
      </ng-template>
    </ng-container>
    <li class="page-item">
      <a class="page-link" (click)="onPageChange(-3)" >&rsaquo;</a>
    </li>
    <li class="page-item">
      <a class="page-link" (click)="onPageChange(-4)" >&raquo;</a>
    </li>
  </ul>
</nav>

`,
  styles: ``
})
export class PaginationComponent {
  @Input() totalPages: number = 0;
  @Input() last: boolean = false;
  @Input() currentPage: number = 1;
  @Input() number: number = 1; 
  @Output() pageChangeRequested = new EventEmitter<number>();
  visiblePages: (number | string)[] = [];

  constructor() { }

  ngOnChanges(changes: SimpleChanges) {
    if (changes['totalPages']) {
      this.updateVisiblePages();
    }
  }

  updateVisiblePages() {
    const pageCount = this.totalPages;
    const currentPage = this.currentPage;

    if (pageCount <= 5) {
      this.visiblePages = Array.from({ length: pageCount }, (_, i) => i + 1);
    } else {
      if (currentPage <= 3) {
        this.visiblePages = [1, 2, 3, 4, '...', pageCount];
      } else if (currentPage >= pageCount - 2) {
        this.visiblePages = [1, '...', pageCount - 3, pageCount - 2, pageCount - 1, pageCount];
      } else {
        this.visiblePages = [1, '...', currentPage - 1, currentPage, currentPage + 1, '...', pageCount];
      }
    }
  }

  onPageChange(pageId: number | string): void {
    let page: number;
    if (typeof pageId === 'number') {
      page = pageId;
    } else {
      page = this.currentPage;
    }

    if (page === -2) {
      page = 1;
      this.last = false;
    } else if (page === -1) {
      page = this.currentPage > 1 ? this.currentPage - 1 : 1;
      this.last = false;
    } else if (page === -3) {
      page = !this.last ? this.currentPage + 1 : this.currentPage;
    } else if (page === -4) {
      page = this.totalPages;
    }

    if (page >= 1 && page <= this.totalPages) {
      this.currentPage = page;
      this.pageChangeRequested.emit(page);
      this.updateVisiblePages();
    }
  }
}
