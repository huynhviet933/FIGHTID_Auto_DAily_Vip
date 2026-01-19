# FIGHTID_Auto_DAily_Vip


Aidrop Dự Án : https://t.me/HVchannelss/259

Tham Gia Discor ( Vip ) : https://discord.gg/gKxvTNu5

Tham gia NHóm VIp Với Chi Phí 8u/1thang Lợi ích tham gia nhóm ViP Sẽ được cấp keey sử dụng các tool vip trong discor hỗ trợ Và tham khao Code các tool dự án mà các bạn đề xuất

Gửi Phí tháng vào đây và chụp hình gửi trực tiếp cho tôi tại discor để xác nhận Role VIp ☕ https://huynhviet933.github.io/donate_viet_mmo/ Có thể tặng tôi ít cafe tại đây

# HƯỚNG DẪN SỬ DỤNG FIGHT.ID ADVANCED TOOL

Tool hỗ trợ đa luồng, đổi IP qua Proxy và giả lập thao tác người dùng thật với các khoảng delay ngẫu nhiên an toàn.

---

### 1. DANH SÁCH CÁC FILE CẤU HÌNH (Yêu cầu chuẩn bị trước)

Bạn cần tạo các file này cùng thư mục với file chạy tool (`main.js`):

1. **profiles.json**: Chứa dữ liệu tài khoản (AccessToken, Username, UserAgent). Đây là file quan trọng nhất để tool đăng nhập. File Này từ Tool tạo Ref Có sẵn Liên Kết
2. **proxy.txt**: Danh sách Proxy để đổi IP. Định dạng mỗi dòng một Proxy:
   - `http://user:pass@ip:port` hoặc `http://ip:port`
3. **privatekey.txt**: Danh sách Private Key ví EVM (Dùng cho chức năng **Mode 3: Mint FP**). Có thể Mint Nhiều Tài khoản về 1 ví 
4. **privatekeySOL.txt**: Danh sách Private Key ví Solana (Dùng cho chức năng **Mode 4: Link SOL**). Định dạng: 
   - Dạng chuỗi Base58 (Ví dụ: `5Ry...`) hoặc dạng mảng số (Ví dụ: `[12, 54, ...]`).
5. **license.key**: Chứa mã License để kích hoạt tool (Tool sẽ tự tạo và lưu nếu bạn nhập thủ công lần đầu).

---

### 2. CHI TIẾT 3 CHỨC NĂNG CHÍNH

#### Mode 2: Auto Play Games (Tự động chơi Game)
- **Hành động**: Tool tự động chơi 2 loại game là `Punching Bag` và `Punching Ear Bag`.
- **Cơ chế**: 
    - Giả lập thời gian chơi từ 8 - 10 giây.
    - Gửi số lần tap (tọa độ thời gian) ngẫu nhiên để tránh bị hệ thống quét bot.
- **Kết quả**: Cộng điểm Pts trực tiếp vào tài khoản sau mỗi ván game thành công.

#### Mode 3: Mint FP (Mint Token mùa giải)
- **Hành động**: Sử dụng ví EVM trong file `privatekey.txt` để làm địa chỉ nhận Token.
- **Yêu cầu**: File `privatekey.txt` phải có đủ số lượng key tương ứng với số profile hoặc sẽ được dùng xoay vòng.

#### Mode 4: Link SOL + Claim Full Status (Kết nối ví Solana)
- **Hành động**: Thực hiện ký SIWS (Sign In With Solana) để liên kết ví Solana vào tài khoản Fight.ID.
- **Ưu điểm**:
    - Tự động kiểm tra: Nếu ví đã liên kết rồi, tool sẽ báo "Already Linked" và hiển thị số điểm Pts hiện tại.
    - Nếu chưa liên kết: Tool thực hiện kết nối và tự động Claim phần thưởng xác minh (+250 Pts).
    - Hiển thị Full địa chỉ ví SOL để bạn dễ dàng quản lý.

---

### 3. CƠ CHẾ DELAY AN TOÀN (ANTI-BAN)

Tool được thiết kế với các khoảng nghỉ ngẫu nhiên để không bị server đánh dấu là truy cập bất thường:
- **Staggered Start (Khởi đầu so le)**: Các luồng đầu tiên khởi động cách nhau từ **2 - 7 giây**.
- **Task Delay**: Trước khi nhấn Link hoặc Chơi game, bot nghỉ **3 - 7 giây**.
- **Replacement Delay**: Khi một tài khoản xong, tài khoản tiếp theo đợi **5 - 30 giây** mới bắt đầu chạy để không tạo ra lượng request dồn dập.

---

### 4. CÁCH CHẠY TOOL

1. Cài đặt môi trường: Cài NodeJS (phiên bản 16 trở lên).
2. Cài đặt thư viện: Mở CMD tại thư mục tool và chạy lệnh:

   ```bash
   npm install axios ethers @solana/web3.js bs58 tweetnacl https-proxy-agent readline-sync 


Start Tool 

 ```bash
   node Main.js

   

   
