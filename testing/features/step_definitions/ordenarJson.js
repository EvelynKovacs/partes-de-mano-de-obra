function ordenarJson(obj) {
    const jsonOrdenado = {};
    Object.keys(obj).sort().forEach(key => {
        if (typeof obj[key] === 'object' && !Array.isArray(obj[key])) {
            jsonOrdenado[key] = ordenarJson(obj[key]);
        } else {
            jsonOrdenado[key] = obj[key];
        }
    });
    return jsonOrdenado;
}


module.exports = ordenarJson;     