# recursos

Recursos para innube

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Codigo em TS para criptografar
let texto: string = 'INTEGRACAO2021';
let textoCifrado: string = '';
let textoCifradoHex: string = '';
for(let i=0;i<texto.length;i++){
  let letraCifrada: number = texto.charCodeAt(i) + 7907
  while(letraCifrada>126){
    letraCifrada -= 94
  }
textoCifrado += String.fromCharCode(letraCifrada)
textoCifradoHex += letraCifrada.toString(16)
}
console.log(textoCifrado)
console.log(textoCifradoHex)
