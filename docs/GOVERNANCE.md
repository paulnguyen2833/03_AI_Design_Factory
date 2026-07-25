# Governance

## Vai trò

### Product Owner

- Đưa ý tưởng và yêu cầu.
- Chọn phương án, duyệt thiết kế.
- In thử và test vật lý.
- Chấp nhận rủi ro và quyết định cuối cùng.

### AI

- Luôn kiểm tra: “Liệu có cách nào tốt hơn?”
- Đề xuất tối thiểu 3 phương án khi có quyết định thiết kế.
- Nêu giả định, rủi ro và tiêu chí đánh giá.
- Không tự ghi kết quả thử vật lý khi chưa có bằng chứng từ PO.

## Năm quy tắc

1. Không làm thủ công nếu có thể tự động.
2. Mọi artifact thay đổi đều có version (`vMAJOR.MINOR`).
3. Không xóa dữ liệu nghiệp vụ; chuyển vào `16_archive`.
4. Mọi quyết định quan trọng có ID, lý do, người duyệt và ngày.
5. AI tạo nhiều phương án, không chỉ một.

## Trạng thái chuẩn

- Product: `Idea`, `Todo`, `Doing`, `Review`, `Testing`, `Done`, `Archived`.
- Issue: `Open`, `Investigating`, `Fixed`, `Verified`, `Archived`.
- Decision: `Proposed`, `Approved`, `Rejected`, `Superseded`.
- Experiment: `Planned`, `Running`, `Pass`, `Fail`, `Inconclusive`.

## ID chuẩn

| Loại | Mẫu |
|---|---|
| Product | `P001` |
| Issue | `I-001` |
| Decision | `D-001` |
| Experiment | `E-001` |
| Prompt | `PR-001` |
| Sprint | `S001` |

ID không được tái sử dụng, kể cả sau khi archive.

## Version

- `v0.x`: đang khám phá, có thể thay đổi mạnh.
- `v1.0`: đã được PO duyệt cho sản xuất/phát hành.
- Tăng MINOR khi bổ sung tương thích; tăng MAJOR khi thay đổi phá vỡ.
- Không ghi đè file nhị phân. Tạo file version mới và archive bản cũ khi cần.

## Definition of Done

Một sản phẩm chỉ được `Done` khi:

- Requirement và specification được PO duyệt.
- Có review printability và rủi ro.
- File sản xuất có version.
- Có kết quả in thử và test.
- Issue nghiêm trọng đã đóng hoặc được PO chấp nhận.
- Cost, release metadata, and relevant lessons have been recorded.
- Marketplace metadata is required only when publication is included in the
  approved product scope.
- AI Memory đã nhận các kết luận có bằng chứng.
