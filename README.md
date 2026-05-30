# GameVault - Mini Oyun Kataloğu Uygulaması

Bu proje, Flutter kullanılarak geliştirilmiş modern ve minimalist bir video oyun kataloğu uygulamasıdır. Açık Tema (Light Theme) ile tasarlanmış olup, asenkron yerel JSON simülasyonu, dinamik ürün detay sayfaları ve sepet yönetimi gibi temel e-ticaret işlevlerini barındırır.

## Özellikler
GameVault, sade açık tema (Light Theme), yuvarlatılmış kart tasarımları, net tipografi ve mikro etkileşimler içeren modern minimalist bir tasarıma sahiptir. Uygulamada yer alan JSON simülasyonu sayesinde yerel `assets/products.json` dosyasından asenkron veri çekme simülasyonu yapılarak dinamik oyun verileri `ApiService` aracılığıyla okunur. Kapsamlı oyun detay sayfasında route arguments ile veri aktarımı, oyun özellikleri (Geliştirici, Tür, Platformlar), açıklama alanı ve sepete ekleme aksiyonu yer almaktadır. Gelişmiş sepet yönetimi ile sepete ürün ekleme, adet azaltma/artırma, gerçek zamanlı toplam fiyat hesaplama ve dinamik "Checkout" (Ödeme) ekranı simülasyonu sunulur. Kullanıcılar ana sayfa üzerinden oyun adına göre anlık arama ve filtreleme yapabilirken; web tarayıcılarında (Chrome) resimlerin yüklenmesini engelleyen CORS politikasını aşmak için optimize edilmiş gelişmiş CORS desteği ile resim sunumu da sisteme entegre edilmiştir.

## Kullanılan Teknolojiler
* **Flutter SDK 3.41.9** (Dart 3.11.5)
* **http & cached_network_image** paketleri
* **JSON Local Asset Loader** (Asenkron veri okuma)

## Proje Klasör Yapısı
Proje, Flutter standartlarına uygun olarak temiz ve modüler bir mimariyle geliştirilmiştir:
```text
lib/
├── models/       # Veri Modelleri (Product, CartItem)
├── screens/      # Arayüz Ekranları (HomeScreen, DetailScreen, CartScreen)
├── services/     # Servisler (ApiService, CartService)
├── theme/        # Tema Tanımlamaları (AppTheme)
├── widgets/      # Tekrar Kullanılabilir Arayüz Elemanları (ProductCard)
└── main.dart     # Uygulama Giriş Noktası & Rotalar
```

## Çalıştırma Adımları
1. Bu projeyi bilgisayarınıza indirin veya klonlayın.
2. Terminali projenin ana dizininde (`gamevault`) açın.
3. Gerekli paketleri indirmek ve bağımlılıkları yüklemek için şu komutu çalıştırın:
   ```bash
   flutter pub get
   ```
4. Projeyi Chrome (Web) üzerinde başlatmak için:
   ```bash
   flutter run -d chrome
   ```
5. Projeyi Android veya iOS telefon emülatöründe çalıştırmak için (emülatörünüzün açık olduğundan emin olun):
   ```bash
   flutter run
   ```
