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
            --error: #ef4444;
            --success: #10b981;
            --gray-dark: #64748b;
        }

        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
            background-color: var(--plomo-claro);
        }

        /* Sidebar */
        .sidebar {
            width: 260px;
            background-color: white;
            padding: 1rem;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
        }

        .logo-container {
            display: flex;
            align-items: center;
            margin-bottom: 2rem;
            padding: 0.5rem;
        }

        .logo {
            width: 40px;
            height: auto;
        }

        .btn-new {
            background-color: var(--primary);
            color: white;
            border: none;
            padding: 0.75rem 1rem;
            border-radius: 0.5rem;
            display: flex;
            align-items: center;
            margin-bottom: 1.5rem;
            cursor: pointer;
            transition: all 0.3s;
        }

        .btn-new:hover {
            background-color: var(--primary-dark);
        }

        .btn-new i {
            margin-right: 0.5rem;
        }

        .menu-item {
            display: flex;
            align-items: center;
            padding: 0.75rem;
            border-radius: 0.5rem;
            margin-bottom: 0.5rem;
            cursor: pointer;
            color: var(--gray-dark);
            transition: all 0.3s;
        }

        .menu-item:hover {
            background-color: var(--plomo-suave);
        }

        .menu-item i {
            margin-right: 0.75rem;
            width: 20px;
            text-align: center;
        }

        .user-profile {
            margin-top: auto;
            padding: 1rem;
            border-top: 1px solid var(--plomo-suave);
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--primary);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 0.75rem;
            font-weight: bold;
        }

        .user-name {
            font-weight: 600;
        }

        /* Main Content */
        .main-content {
            flex: 1;
            padding: 2rem;
            display: flex;
            flex-direction: column;
        }

        .chat-container {
            background-color: white;
            border-radius: 0.8rem;
            padding: 2rem;
            width: 95%;
            height: 80vh;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            overflow-y: auto;
            margin-bottom: 1rem;
        }

        .chat-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .chat-header h1 {
            color: var(--primary-dark);
            margin-bottom: 0.5rem;
        }

        .message {
            background-color: var(--plomo-suave);
            padding: 1rem;
            border-radius: 0.5rem;
            margin-bottom: 1rem;
            max-width: 80%;
        }

        .message-bot {
            background-color: var(--primary);
            color: white;
            margin-right: auto;
        }

        .message-user {
            margin-left: auto;
            background-color: var(--plomo-suave);
        }

        .input-container {
            display: flex;
            width: 100%;
        }

        .chat-input {
            flex: 1;
            padding: 0.75rem 1rem;
            border: 1px solid var(--plomo-suave);
            border-radius: 0.5rem 0 0 0.5rem;
            outline: none;
        }

        .send-btn {
            background-color: var(--primary);
            color: white;
            border: none;
            padding: 0 1.5rem;
            border-radius: 0 0.5rem 0.5rem 0;
            cursor: pointer;
            transition: all 0.3s;
        }

        .send-btn:hover {
            background-color: var(--primary-dark);
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo-container">
           <!--  <img src="crea.png" alt="Logo" class="logo">  -->
        </div>

        <button class="btn-new">
            <i class="fas fa-plus"></i>
            Nuevo chat
        </button>

        <div class="menu-item">
            <i class="fas fa-history"></i>
            <span>Historial</span>
        </div>


        <div class="user-profile">
            <div class="user-avatar">${usuario.substring(0,2).toUpperCase()}</div>
            <div class="user-name">${usuario}</div>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="chat-container">
       
        </div>

        <div class="input-container">
            <input type="text" class="chat-input" placeholder="  Hola, escribenos y te ayudamos...">
            <button class="send-btn">
                <i class="fas fa-paper-plane"></i>
            </button>
        </div>
    </div>
</body>
</html>