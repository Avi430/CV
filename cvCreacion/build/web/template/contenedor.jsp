<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CreAICV</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #3b82f6;
            --primary-dark: #2563eb;
            --plomo-claro: #f3f4f6;
            --plomo-suave: #e5e7eb;
            --plomo-bajito: #d1d5db;
            --error: #ef4444;
            --gray-dark: #64748b;
            --azul-claro: #93c5fd;
            --plomo-icono: #9ca3af;
            --azul-modal: #e0f2fe;
        }

        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            position: relative;
            color: #1e293b;
            background-color: #f8f9fa;
            overflow: hidden;
        }
        
        .bg-chatbots {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0;
            overflow: hidden;
        }
        
        .bg-chatbots li {
            position: absolute;
            display: block;
            list-style: none;
            animation: animate 25s linear infinite;
            bottom: -150px;
            opacity: 0.5;
        }
        
        .bg-chatbots li:nth-child(odd) {
            color: var(--azul-claro);
        }
        
        .bg-chatbots li:nth-child(even) {
            color: var(--plomo-icono);
        }
        
        .bg-chatbots li:nth-child(1) {
            left: 10%;
            font-size: 95px;
            animation-delay: 0s;
        }
        
        .bg-chatbots li:nth-child(2) {
            left: 15%;
            font-size: 95px;
            animation-delay: 1s;
            animation-duration: 22s;
        }
        
        .bg-chatbots li:nth-child(3) {
            left: 20%;
            font-size: 95px;
            animation-delay: 3s;
        }
        
        .bg-chatbots li:nth-child(4) {
            left: 30%;
            font-size: 95px;
            animation-delay: 2s;
            animation-duration: 18s;
        }
        
        .bg-chatbots li:nth-child(5) {
            left: 40%;
            font-size: 95px;
            animation-delay: 5s;
        }
        
        .bg-chatbots li:nth-child(6) {
            left: 55%;
            font-size: 95px;
            animation-delay: 4s;
        }
        
        .bg-chatbots li:nth-child(7) {
            left: 65%;
            font-size: 95px;
            animation-delay: 7s;
        }
        
        .bg-chatbots li:nth-child(8) {
            left: 70%;
            font-size: 95px;
            animation-delay: 10s;
            animation-duration: 35s;
        }
        
        .bg-chatbots li:nth-child(9) {
            left: 80%;
            font-size: 95px;
            animation-delay: 2s;
            animation-duration: 30s;
        }
        
        .bg-chatbots li:nth-child(10) {
            left: 85%;
            font-size: 95px;
            animation-delay: 6s;
            animation-duration: 15s;
        }
        
        .bg-chatbots li:nth-child(11) {
            left: 5%;
            font-size: 95px;
            animation-delay: 8s;
        }
        
        .bg-chatbots li:nth-child(12) {
            left: 25%;
            font-size: 95px;
            animation-delay: 12s;
            animation-duration: 25s;
        }
        
        .bg-chatbots li:nth-child(13) {
            left: 35%;
            font-size: 95px;
            animation-delay: 9s;
        }
        
        .bg-chatbots li:nth-child(14) {
            left: 45%;
            font-size: 95px;
            animation-delay: 5s;
            animation-duration: 20s;
        }
        
        .bg-chatbots li:nth-child(15) {
            left: 60%;
            font-size: 95px;
            animation-delay: 11s;
        }
        
        .bg-chatbots li:nth-child(16) {
            left: 75%;
            font-size: 95px;
            animation-delay: 14s;
        }
        
        .bg-chatbots li:nth-child(17) {
            left: 90%;
            font-size: 95px;
            animation-delay: 3s;
            animation-duration: 28s;
        }
        
        .bg-chatbots li:nth-child(18) {
            left: 50%;
            font-size: 95px;
            animation-delay: 7s;
        }
        
        .bg-chatbots li:nth-child(19) {
            left: 95%;
            font-size: 95px;
            animation-delay: 13s;
        }
        
        .bg-chatbots li:nth-child(20) {
            left: 5%;
            font-size: 95px;
            animation-delay: 8s;
            animation-duration: 18s;
        }
        
        @keyframes animate {
            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 0.5;
            }
            
            50% {
                opacity: 0.8;
            }
            
            100% {
                transform: translateY(-1000px) rotate(720deg);
                opacity: 0;
            }
        }
        
        .main-content {
            position: relative;
            z-index: 1;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 0 2rem;
        }
        
        .title {
            font-size: 2.5rem;
            font-weight: 700;
            margin: 0 0 1rem 0;
            color: #1e293b;
            line-height: 1.2;
        }
        
        .subtitle {
            font-size: 1.25rem;
            color: var(--gray-dark);
            margin-bottom: 2.5rem;
            max-width: 600px;
            line-height: 1.6;
        }
        
        .buttons {
            display: flex;
            gap: 1.5rem;
            justify-content: center;
        }
        
        .btn {
            padding: 1rem 2rem;
            font-size: 1.1rem;
            border-radius: 0.5rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .btn-primary {
            background-color: var(--primary);
            color: white;
            border: none;
        }
        
        .btn-outline {
            background-color: transparent;
            color: var(--primary);
            border: 2px solid var(--primary);
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Estilos para los modales */
        .modal-registro {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        
        .modal-login,
        .modal-register {
            background: white;
            padding: 1.5rem;
            border-radius: 0.8rem;
            width: 90%;
            max-width: 350px;
            position: relative;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin: 1rem;
        }
        
        .close-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background: var(--primary);
            color: white;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            font-weight: bold;
            border: none;
            transition: all 0.3s;
        }
        
        .close-btn:hover {
            background: var(--primary-dark);
            transform: scale(1.1);
        }
        
        .form-group {
            margin-bottom: 1.2rem;
            text-align: left;
            position: relative;
        }
        
        .form-label {
            display: block;
            margin-bottom: 0.4rem;
            color: #1e293b;
            font-size: 0.9rem;
            font-weight: 500;
        }
        
        .form-input {
            width: 90%;
            padding: 0.7rem;
            border: 1px solid #e2e8f0;
            border-radius: 0.5rem;
            font-size: 0.95rem;
            background-color: white;
            transition: all 0.3s;
            padding-right: 35px;
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.2);
        }
        
        select.form-input {
            appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='%233b82f6' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 0.75rem center;
            background-size: 16px 12px;
        }
        
        /* Estilos para el ojito de contraseña */
        .password-toggle {
            position: absolute;
            right: 10px;
            top: 35px;
            cursor: pointer;
            color: var(--plomo-icono);
            transition: all 0.3s;
        }
        
        .password-toggle:hover {
            color: var(--primary);
        }
        
        /* Estilos para mensajes de error */
        .alert-message {
            padding: 0.8rem;
            border-radius: 0.5rem;
            margin-bottom: 1rem;
            font-size: 0.9rem;
            display: none;
            text-align: center;
        }
        
        .alert-error {
            background-color: #fee2e2;
            color: var(--error);
            border: 1px solid #fecaca;
        }
        
        .alert-success {
            background-color: #dcfce7;
            color: #16a34a;
            border: 1px solid #bbf7d0;
        }

        .login-header,
        .register-header {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 1.2rem;
        }
        
        .login-logo,
        .register-logo {
            width: 80px;
            height: auto;
            margin-bottom: 1rem;
        }
        
        .login-subtitle,
        .register-subtitle {
            font-size: 1.2rem;
            font-weight: 600;
            color: var(--primary-dark);
            margin-bottom: 1.5rem;
            text-transform: uppercase;
        }
        
        .forgot-password {
            display: block;
            text-align: right;
            margin-top: 0.6rem;
            margin-bottom: 1.2rem;
            color: var(--primary);
            font-size: 0.85rem;
            text-decoration: none;
        }
        
        .forgot-password:hover {
            text-decoration: underline;
        }
        
        .login-btn,
        .register-btn {
            width: 100%;
            padding: 0.8rem;
            font-size: 1rem;
            border-radius: 0.5rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            background: var(--primary);
            color: white;
            border: none;
            margin-top: 0.5rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .login-btn:hover,
        .register-btn:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
        }

        @media (max-width: 768px) {
            .title {
                font-size: 2rem;
            }
            
            .buttons {
                flex-direction: column;
                gap: 1rem;
            }
            
            .btn {
                width: 100%;
            }
            
            .modal-login,
            .modal-register {
                padding: 1.2rem;
                max-width: 300px;
            }
            
            .login-logo,
            .register-logo {
                width: 70px;
                margin-bottom: 0.8rem;
            }
            
            .login-subtitle,
            .register-subtitle {
                font-size: 1.1rem;
                margin-bottom: 1.2rem;
            }
            
            .form-group {
                margin-bottom: 1rem;
            }
            
            .form-input {
                padding: 0.6rem;
            }
            
            .password-toggle {
                top: 32px;
            }
        }

        @media (max-width: 480px) {
            .modal-login,
            .modal-register {
                max-width: 280px;
                padding: 1rem;
            }
            
            .form-input {
                padding: 0.55rem;
            }
            
            .btn {
                padding: 0.8rem 1rem;
                font-size: 1rem;
            }
            
            .title {
                font-size: 1.8rem;
            }
            
            .subtitle {
                font-size: 1.1rem;
                margin-bottom: 2rem;
            }
            
            .password-toggle {
                top: 30px;
            }
        }
        
    </style>
</head>
<body>
    <!-- FONDO DINÁMICO CON ROBOTS -->
    <ul class="bg-chatbots">
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
        <li><i class="fas fa-robot"></i></li>
        <li><i class="fas fa-comment-dots"></i></li>
    </ul>

    <main class="main-content">
        <h1 class="title">Creación de CV con Inteligencia Artificial</h1>
        <img src="crea.png" alt="CV AI" width="600" height="auto" />

        <p class="subtitle">¡Aprovecha el poder de la IA para destacar en tus postulaciones laborales!</p>
        <div class="buttons">
            <button class="btn btn-primary" id="btnIniciarSesion">Iniciar sesión</button>
            <button class="btn btn-outline" id="btnRegistrarse">Registrarse</button>
        </div>
    </main>

    <!-- Modelo de Inicio de Sesión -->
    <div id="modalInicioSesion" class="modal-registro" <%= request.getParameter("loginError") != null ? "style='display:flex;'" : "" %>>
        <div class="modal-login">
            <span class="close-btn" id="closeModalInicio">&times;</span>

            <div class="login-header">
                <img src="crea.png" alt="Logo CreaICV" class="login-logo">
                <h2 class="login-subtitle">INICIO DE SESIÓN</h2>
            </div>

         <!-- Mensaje de error para login -->
<%
String loginError = request.getParameter("loginError");
if (loginError != null && loginError.equals("true")) {
%>
<div id="loginError" class="alert-message alert-error" style="display:block;">
Correo o contraseña incorrectos. Por favor, inténtelo de nuevo.
</div>
<% } else { %>
<div id="loginError" class="alert-message alert-error" style="display:none;"></div>
<% } %>

            <form method="post" action="InicioSesion" id="loginForm">
                <div class="form-group">
                    <label class="form-label">Correo Electrónico</label>
                    <input type="email" name="correo" id="loginEmail" class="form-input" required>
                </div>
                <div class="form-group">
                    <label class="form-label">Contraseña</label>
                    <input type="password" name="contrasena" id="loginPassword" class="form-input" required>
                    <i class="fas fa-eye password-toggle" id="toggleLoginPassword"></i>
                </div>
                <a href="#" class="forgot-password">¿Has olvidado tu contraseña?</a>
                
                <button type="submit" class="login-btn">Iniciar sesión</button>
            </form>
        </div>
    </div>

    <!-- Modelo de Registro -->
    <div id="modalRegistro" class="modal-registro" <%= request.getParameter("error") != null ? "style='display:flex;'" : "" %>>
        <div class="modal-register">
            <span class="close-btn" id="closeModal">&times;</span>
            
            <div class="register-header">
                <img src="crea.png" alt="Logo CreaICV" class="register-logo">
                <h2 class="register-subtitle">REGISTRO DE USUARIO</h2>
            </div>
            
            <!-- Mensajes de error -->
            <% 
            String error = request.getParameter("error");
            if (error != null) {
                String mensaje = "";
                String display = "block";
                
                switch(error) {
                    case "email":
                        mensaje = "Este correo electrónico ya está registrado. Por favor, use otro correo.";
                        break;
                    case "username":
                        mensaje = "Este nombre de usuario ya está registrado. Por favor, elija otro.";
                        break;
                    case "password":
                        mensaje = "Las contraseñas no coinciden. Por favor, inténtelo de nuevo.";
                        break;
                    case "database":
                        mensaje = "Error en la base de datos. Por favor, inténtelo más tarde.";
                        break;
                    default:
                        display = "none";
                }
            %>
            <div class="alert-message alert-error" style="display:<%= display %>;">
                <%= mensaje %>
            </div>
            <% } %>
            
            <form id="formRegistro" method="post" action="Registro">
                <div class="form-group">
                    <label class="form-label">Usuario</label>
                    <input type="text" name="usuario" class="form-input" required>
                </div>
                <div class="form-group">
                    <label class="form-label">Correo Electrónico</label>
                    <input type="email" name="correo" id="registerEmail" class="form-input" required>
                </div>
                <div class="form-group">
                    <label class="form-label">Distrito</label>
                    <select name="distrito" class="form-input" required>
                        <option value="">Seleccione un distrito</option>
                        <option value="San Juan de Lurigancho">San Juan de Lurigancho</option>
                        <option value="Lima">Lima</option>
                        <option value="Ate">Ate</option>
                        <option value="Miraflores">Miraflores</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label">Contraseña</label>
                    <input type="password" name="contrasena" id="registerPassword" class="form-input" required>
                    <i class="fas fa-eye password-toggle" id="toggleRegisterPassword"></i>
                </div>
                <div class="form-group">
                    <label class="form-label">Confirmar Contraseña</label>
                    <input type="password" name="confirmarContrasena" id="confirmPassword" class="form-input" required>
                    <i class="fas fa-eye password-toggle" id="toggleConfirmPassword"></i>
                </div>
                <button type="submit" class="register-btn">Registrarse</button>
            </form>
        </div>
    </div>

    <script>
        // Funcionalidad para abrir/cerrar modales
        document.getElementById('btnRegistrarse').addEventListener('click', () => {
            document.getElementById('modalRegistro').style.display = 'flex';
            // Resetear formulario
            document.getElementById('formRegistro').reset();
        });

        document.getElementById('btnIniciarSesion').addEventListener('click', () => {
            document.getElementById('modalInicioSesion').style.display = 'flex';
            // Resetear formulario
            document.getElementById('loginForm').reset();
            // Ocultar mensaje de error al abrir
            document.getElementById('loginError').style.display = 'none';
        });

        document.getElementById('closeModal').addEventListener('click', () => {
            document.getElementById('modalRegistro').style.display = 'none';
        });

        document.getElementById('closeModalInicio').addEventListener('click', () => {
            document.getElementById('modalInicioSesion').style.display = 'none';
        });

        // Cerrar modales al hacer clic fuera
        window.addEventListener('click', (e) => {
            if (e.target === document.getElementById('modalRegistro')) {
                document.getElementById('modalRegistro').style.display = 'none';
            }
            if (e.target === document.getElementById('modalInicioSesion')) {
                document.getElementById('modalInicioSesion').style.display = 'none';
            }
        });

        // Funcionalidad para mostrar/ocultar contraseña
        const togglePassword = (passwordField, toggleIcon) => {
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleIcon.classList.replace('fa-eye', 'fa-eye-slash');
            } else {
                passwordField.type = 'password';
                toggleIcon.classList.replace('fa-eye-slash', 'fa-eye');
            }
        };

        document.getElementById('toggleLoginPassword').addEventListener('click', () => {
            const passwordField = document.getElementById('loginPassword');
            const toggleIcon = document.getElementById('toggleLoginPassword');
            togglePassword(passwordField, toggleIcon);
        });

        document.getElementById('toggleRegisterPassword').addEventListener('click', () => {
            const passwordField = document.getElementById('registerPassword');
            const toggleIcon = document.getElementById('toggleRegisterPassword');
            togglePassword(passwordField, toggleIcon);
        });

        document.getElementById('toggleConfirmPassword').addEventListener('click', () => {
            const passwordField = document.getElementById('confirmPassword');
            const toggleIcon = document.getElementById('toggleConfirmPassword');
            togglePassword(passwordField, toggleIcon);
        });

        // Validación de formulario de registro (solo frontend)
        document.getElementById('formRegistro').addEventListener('submit', function(e) {
            const password = document.getElementById('registerPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            
            // Validar contraseñas coincidentes
            if (password !== confirmPassword) {
                e.preventDefault();
                alert('Las contraseñas no coinciden. Por favor, verifique.');
                return;
            }
        });

        // Limpiar mensaje de error al enviar el formulario de login
        document.getElementById('loginForm').addEventListener('submit', function() {
            document.getElementById('loginError').style.display = 'none';
        });
    </script>
</body>
</html>