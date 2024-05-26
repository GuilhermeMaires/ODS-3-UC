package com.mycompany.loginscreen;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class LoginScreen extends JFrame {
    private JTextField usernameField;
    private JPasswordField passwordField;

    public LoginScreen() {
        super("Sistema de Medicamentos Naturais - Login");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 300);

        // Criar um JLabel para exibir a imagem de fundo
        ImageIcon backgroundImage = new ImageIcon("C:\\Users\\guilh\\OneDrive\\Documentos\\FOTO6.jpg");
        JLabel backgroundLabel = new JLabel(backgroundImage);
        backgroundLabel.setLayout(new BorderLayout());

        // Painel para o formulário de login no centro
        JPanel loginPanel = new JPanel(new GridLayout(3, 2, 10, 10));
        loginPanel.setOpaque(false); // Torna o painel transparente para exibir o fundo

        JLabel usernameLabel = new JLabel("Usuário:");
        JLabel passwordLabel = new JLabel("Senha:");
        usernameField = new JTextField();
        passwordField = new JPasswordField();

        JButton loginButton = new JButton("Login");
        loginButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String username = usernameField.getText();
                String password = new String(passwordField.getPassword());

                // Lógica de autenticação
                if (username.equals("usuario") && password.equals("senha")) {
                    JOptionPane.showMessageDialog(LoginScreen.this, "Login bem-sucedido!");
                    // Abrir a próxima tela do sistema após o login
                } else {
                    JOptionPane.showMessageDialog(LoginScreen.this, "Usuário ou senha incorretos.", "Erro de Login", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        loginPanel.add(usernameLabel);
        loginPanel.add(usernameField);
        loginPanel.add(passwordLabel);
        loginPanel.add(passwordField);
        loginPanel.add(new JLabel()); // Espaço vazio
        loginPanel.add(loginButton);

        // Adicionar o painel de login ao JLabel de fundo
        backgroundLabel.add(loginPanel, BorderLayout.CENTER);

        // Adicionar o JLabel de fundo à janela
        add(backgroundLabel);
        setLocationRelativeTo(null); // Centraliza a janela na tela
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                LoginScreen loginScreen = new LoginScreen();
                loginScreen.setVisible(true);
            }
        });
    }
}
