# Licorería App - MVP

App móvil básica para gestionar pedidos de una licorería.

## Tecnologías
- Flutter (multiplataforma)
- Firebase (Firestore para base de datos)

## Cómo usar

1. Clona el repositorio
2. Ejecuta `flutter pub get`
3. Configura Firebase:
   - Crea un proyecto en [Firebase Console](https://console.firebase.google.com/)
   - Agrega una app Android/iOS
   - Descarga `google-services.json` (Android) o `GoogleService-Info.plist` (iOS)
   - Colócalo en `android/app/` o `ios/Runner/`
4. Agrega productos en Firestore en la colección `products` con campos:
   - `name` (string)
   - `type` (string)
   - `price` (number)
   - `stock` (number)
5. Ejecuta la app: `flutter run`

## Próximas funciones
- Carrito de compras
- Formulario de pedido
- Historial de pedidos
