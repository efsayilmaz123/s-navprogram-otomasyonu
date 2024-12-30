package Helper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import javax.swing.JOptionPane;
import javax.swing.UIManager;

public class Helper {

    public static void optionPaneChangeButtonText() {
        UIManager.put("OptionPane.cancelButtonText", "İptal");
        UIManager.put("OptionPane.noButtonText", "Hayır");
        UIManager.put("OptionPane.okButtonText", "Tamam");
        UIManager.put("OptionPane.yesButtonText", "Evet");
    }

    public static void showMsg(String str) {
        String msg;
        optionPaneChangeButtonText();

        switch (str) {
            case "fill":
                msg = "Lütfen tüm alanları doldurunuz.";
                break;
            case "success":
                msg = "İşlem başarılı!";
                break;
            default:
                msg = str;
        }
        JOptionPane.showMessageDialog(null, msg, "Mesaj", JOptionPane.INFORMATION_MESSAGE);
    }

    public static boolean confirm(String str) {
        String msg;
        optionPaneChangeButtonText();

        switch (str) {
            case "sure":
                msg = "Bu işlemi gerçekleştirmek istiyor musunuz?";
                break;
            default:
                msg = str;
                break;
        }
        int res = JOptionPane.showConfirmDialog(null, msg, "DİKKAT!", JOptionPane.YES_NO_OPTION);
        return res == 0;
    }

    // Rastgele bir tarih döndürür (örneğin, 2024-12-31 formatında)
    public static String randomDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.DAY_OF_YEAR, new Random().nextInt(30)); // Önümüzdeki 30 gün içinde bir tarih
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(calendar.getTime());
    }

    // Rastgele bir saat döndürür (örneğin, 14:00 formatında)
    public static String randomStartTime() {
        Random random = new Random();
        int hour = random.nextInt(8) + 8; // 8-15 arası saat
        int minute = random.nextInt(60);  // 0-59 arası dakika
        return String.format("%02d:%02d", hour, minute);
    }

    // Başlangıç saatine göre bitiş saatini hesaplar
    public static String calculateEndTime(String startTime, int durationMinutes) {
        String[] timeParts = startTime.split(":");
        int hour = Integer.parseInt(timeParts[0]);
        int minute = Integer.parseInt(timeParts[1]);

        // Sınav süresi kadar dakikayı ekleyelim
        minute += durationMinutes;

        if (minute >= 60) {
            hour += minute / 60;
            minute = minute % 60;
        }

        return String.format("%02d:%02d", hour, minute);
    }

    // Rastgele bir salon ID'si döndürür
    public static int randomSalonId() {
        Random random = new Random();
        return random.nextInt(10) + 1; // 1 ile 10 arasında rastgele salon ID
    }

    // Rastgele bir gözetmen ID'si döndürür
    public static int randomGozetmenId() {
        Random random = new Random();
        return random.nextInt(5) + 1; // 1 ile 5 arasında rastgele gözetmen ID
    }
}