function ltrim(texto) { return texto.replace(/^[ ]+/, ''); }
function rtrim(texto) { return texto.replace(/[ ]+$/, ''); }
function trim(texto) { return ltrim(rtrim(texto)); }