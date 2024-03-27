<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Photo Uploader</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }
    .container {
        width: 50%;
        margin: auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        animation: fadeIn 0.5s ease;
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        text-align: center;
    }
    .upload-label {
        padding: 10px 20px;
        margin: 10px auto;
        display: inline-block;
        border: none;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
        animation: pulse 1s infinite alternate;
    }
    .upload-label:hover {
        background-color: #0056b3;
    }
    @keyframes pulse {
        from { transform: scale(1); }
        to { transform: scale(1.05); }
    }
    #file {
        display: none; /* Görünmez dosya yükleme alanı */
    }
    #progress-bar {
        width: 100%;
        height: 30px;
        background-color: #ddd;
        border-radius: 5px;
        margin-top: 10px;
    }
    #progress {
        width: 0;
        height: 100%;
        background-color: #007bff;
        border-radius: 5px;
    }
    #uploaded-image {
        display: none;
        margin-top: 20px;
        text-align: center;
    }
    #uploaded-image img {
        max-width: 100%;
        border-radius: 5px;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Photo Uploader</h1>
        <form id="upload-form" method="post" action="C:\\Users\\windows\\Desktop\\eclipse\\FileUploader\\build\\classes\\Demo" enctype="multipart/form-data">
            <!-- Görünmez dosya yükleme alanını tetikleyen etiket -->
            <label for="file" class="upload-label">Select Photo</label>
            <!-- Gerçek dosya yükleme alanı (görünmez) -->
            <input type="file" name="file" id="file" />
            <br>
            <input type="submit" value="Start Upload" id="submit-button" />
        </form>
        <div id="progress-bar">
            <div id="progress"></div>
        </div>
        <div id="uploaded-image">
            <h2>Photo Successfully Uploaded!</h2>
            <img id="uploaded-img" src="#" alt="Uploaded Image">
        </div>
    </div>

    <script>
        document.getElementById('submit-button').addEventListener('click', function() {
            document.getElementById('progress').style.width = '0%';
            document.getElementById('progress-bar').style.display = 'block';
            setTimeout(function() {
                document.getElementById('progress').style.width = '25%';
            }, 500);
            setTimeout(function() {
                document.getElementById('progress').style.width = '50%';
            }, 1000);
            setTimeout(function() {
                document.getElementById('progress').style.width = '75%';
            }, 1500);
            setTimeout(function() {
                document.getElementById('progress').style.width = '100%';
                document.getElementById('uploaded-image').style.display = 'block';
                document.getElementById('uploaded-img').src = 'C:\\Users\\windows\\Desktop\\eclipse\\uploadPhoto\\fot.jpg'; 
            }, 2000);
        });
    </script>
</body>
</html>
