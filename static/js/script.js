// Show selected file name and preview image/video
document.addEventListener('DOMContentLoaded', function () {
    const fileInput = document.getElementById('fileInput');
    const fileLabel = document.getElementById('fileLabel');
    const previewBox = document.getElementById('previewBox');

    fileInput.addEventListener('change', function () {
        const file = fileInput.files[0];
        if (!file) return;

        fileLabel.textContent = file.name;

        const ext = file.name.split('.').pop().toLowerCase();
        previewBox.innerHTML = '';

        if (['jpg', 'jpeg', 'png'].includes(ext)) {
            const img = document.createElement('img');
            img.src = URL.createObjectURL(file);
            previewBox.appendChild(img);
        } else if (['mp4', 'mov', 'avi'].includes(ext)) {
            const video = document.createElement('video');
            video.src = URL.createObjectURL(file);
            video.controls = true;
            previewBox.appendChild(video);
        }
    });
});
