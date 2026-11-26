HƯỚNG DẪN TỰ ĐỘNG BUILD FILE .DYLIB BẰNG GITHUB ACTIONS

1. Tạo 1 repository mới trên GitHub (chọn Public hoặc Private đều được).
2. Giải nén file zip này ra và tải toàn bộ lên repository đó (bao gồm cả thư mục ẩn .github/workflows/build.yml, Tweak.xm, Makefile).
3. Vào tab "Actions" trên GitHub -> chọn "Build iOS Dylib" -> bấm "Run workflow".
4. Chờ khoảng 1-2 phút cho chạy xong (hiện dấu tích xanh).
5. Kéo xuống mục "Artifacts" ở cuối trang workflow vừa chạy xong và tải "TuanModAOV-dylib.zip" về máy.
6. Giải nén ra sẽ được file TuanModAOV.dylib sạch, dùng ESign hoặc KSign tiêm thẳng vào file .ipa của bạn.
