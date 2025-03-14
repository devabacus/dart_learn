// Файл: message.dart

// Sealed класс для различных типов сообщений
sealed class Message {
  final String text;

  const Message(this.text);
}

// Подклассы должны быть определены в том же файле
class TextMessage extends Message {
  const TextMessage(String text) : super(text);
}

class ImageMessage extends Message {
  final String imageUrl;

  const ImageMessage(String text, this.imageUrl) : super(text);
}

class AudioMessage extends Message {
  final int durationInSeconds;

  const AudioMessage(String text, this.durationInSeconds) : super(text);
}

// Функция для отображения сообщения
void displayMessage(Message message) {
  // Pattern matching с использованием switch
  switch (message) {
    case TextMessage():
      print('📝 Текст: ${message.text}');

    case ImageMessage(imageUrl: var url):
      print('🖼️ Изображение: ${message.text}');
      print('   URL: $url');

    case AudioMessage(durationInSeconds: var duration):
      print('🔊 Аудио: ${message.text}');
      print('   Длительность: ${duration}s');
  }
}

void main() {
  // Создаем разные типы сообщений
  final messages = [
    TextMessage('Привет, как дела?'),
    ImageMessage('Посмотри на это!', 'https://example.com/image.jpg'),
    AudioMessage('Послушай эту песню', 180),
  ];

  // Отображаем каждое сообщение
  for (final msg in messages) {
    displayMessage(msg);
    print('---');
  }
}
