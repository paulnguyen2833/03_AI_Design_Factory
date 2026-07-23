# AI Design Factory (ADF)

Biến một ý tưởng thành sản phẩm có thể sản xuất và kinh doanh với sự hỗ trợ của AI.

## Mục tiêu

ADF là hệ điều hành cho vòng đời sản phẩm: ý tưởng → yêu cầu → phương án → thiết kế → in thử → kiểm thử → phát hành → học hỏi. Product Owner (PO) đưa yêu cầu, duyệt thiết kế, in thử, kiểm thử và quyết định cuối cùng. AI hỗ trợ quản lý sản phẩm, review cơ khí, kiến trúc, prompt, QA, tài liệu và mentoring.

## Bắt đầu nhanh

1. Ghi ý tưởng vào `03_product_backlog/backlog.csv`.
2. Sao chép `05_projects/_template/PROJECT.md` thành `05_projects/Pxxx_ten_san_pham/PROJECT.md`.
3. Tạo specification từ `06_specifications/_template/SPECIFICATION.md`.
4. Ghi ít nhất 3 phương án trước khi chọn.
5. Ghi quyết định quan trọng trong `11_decision_log/decisions.csv`.
6. Đưa công việc vào `04_sprint_board/board.csv`.
7. Sau mỗi lần thử, cập nhật Experiment, Issue và AI Memory.
8. Chạy `./scripts/validate.sh` trước khi commit.

> Git LFS chưa có trên máy tại thời điểm bootstrap. Hãy cài và cấu hình Git LFS
> cho `*.stl`, `*.3mf`, `*.step`, `*.stp`, `*.blend` trước khi commit model sản xuất.

## Cấu trúc

| Module | Mục đích |
|---|---|
| `00_executive_dashboard` | Tình trạng tổng quan |
| `01_vision` | Mission và mục tiêu dài hạn |
| `02_roadmap` | Kế hoạch theo quý |
| `03_product_backlog` | Nguồn công việc sản phẩm |
| `04_sprint_board` | Luồng To Do → Done |
| `05_projects` | Hồ sơ từng sản phẩm |
| `06_specifications` | Yêu cầu kỹ thuật có version |
| `07_prompt_library` | Prompt, kết quả và đánh giá |
| `08_mechanical_rules` | Quy tắc thiết kế cơ khí |
| `09_knowledge_base` | Kiến thức công cụ/vật liệu |
| `10_issue_tracker` | Lỗi và biện pháp khắc phục |
| `11_decision_log` | Quyết định và lý do |
| `12_experiment_lab` | Dữ liệu thử nghiệm |
| `13_marketplace` | Phát hành và hiệu quả thị trường |
| `14_financial` | Chi phí, thu nhập |
| `15_kpi` | Chỉ số theo năm |
| `16_archive` | Nội dung ngừng dùng; không xóa |
| `17_ai_memory` | Kiến thức riêng đã được kiểm chứng |

Quy tắc vận hành nằm tại [docs/GOVERNANCE.md](docs/GOVERNANCE.md).
