package View;

import javax.swing.*;
import Model.Asistan;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class AsistanGUI extends JFrame {

    // Parametreli kurucu
    public AsistanGUI(Asistan asistan) {

        // Ana pencere ayarları
        setTitle("Sınav Bilgi Sistemi");
        setSize(400, 200);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLayout(null);

        // Hoşgeldiniz mesajı
        JLabel lblHosgeldiniz = new JLabel("Hoşgeldiniz, Sayın " + asistan.getName());
        lblHosgeldiniz.setBounds(20, 20, 300, 30);
        add(lblHosgeldiniz);

        // Ders Ekle butonu
        JButton btnDersEkle = new JButton("DERS EKLE");
        btnDersEkle.setBounds(20, 60, 150, 30);
        add(btnDersEkle);

        // DersEklemeGUI bağlantısı
        btnDersEkle.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                DersEklemeGUI dersEklemeGUI = new DersEklemeGUI();
                dersEklemeGUI.setVisible(true);
            }
        });

        // Sınav Ekle butonu
        JButton btnSinavEkle = new JButton("SINAV EKLE");
        btnSinavEkle.setBounds(200, 60, 150, 30);
        add(btnSinavEkle);

        // SinavEklemeGUI bağlantısı
        btnSinavEkle.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SinavEklemeGUI sinavEklemeGUI = new SinavEklemeGUI();
                sinavEklemeGUI.setVisible(true);
            }
        });

        // Pencereyi görünür hale getir
        setVisible(true);
    }

    // Main metodu: Test için örnek bir Asistan oluşturuluyor
    public static void main(String[] args) {
        Asistan sahteAsistan = new Asistan();
        sahteAsistan.setName("Örnek Kullanıcı");
        sahteAsistan.setId(1);
        sahteAsistan.setTcno("12345678901");
        sahteAsistan.setPassword("password");

        new AsistanGUI(sahteAsistan);
    }
}

// DersEklemeGUI
class DersEklemeGUI extends JFrame {
    public DersEklemeGUI() {
        setTitle("Ders Ekleme");
        setSize(300, 200);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    }
}

// SinavEklemeGUI
class SinavEklemeGUI extends JFrame {
    public SinavEklemeGUI() {
        setTitle("Sınav Ekleme");
        setSize(300, 200);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);}}