# Tad Zeila

## Đôi lời

Xin chào đến với tài liệu của Tad Zeila. Tên mình là Đạt và Tad là tên viết ngược.

- [Programming](Programming/programming-language.md)
- [Non Programming](NonProgramming/non-programming-language.md)
- [Developer](Developer/dev.md)
- [Software](Software/software.md)
- [Tools](Tools/tools.md)
- [OS (Operator System)](OS/os.md)
- [Work](Work/work.md)
- Study
- Ngôn Ngữ
- Dự án

## Note

!!! danger "Importance"
    - 

!!! warning "Care"
    - Repo cho Windows, lồng nhiều git vào một
    - `Android` -> `EditText`

    Thường thì `EditText` sau khi nhập liệu sẽ không tự động thoát. Có thể dùng phím ngoài hoặc lệnh dưới này để thoát chế độ _focus_ vảo `EditText`.

    ```java
    edtFreqChange.setOnEditorActionListener((v, actionId, event) -> {
        if (actionId == EditorInfo.IME_ACTION_DONE ||
                (event != null && event.getKeyCode() == KeyEvent.KEYCODE_ENTER && event.getAction() == KeyEvent.ACTION_DOWN)) {

            // Set new text after Enter
            String str = edtFreqChange.getText().toString();
            int value = Integer.valueOf(str).intValue();
            if (value>20000) {
                value = 20000;
                edtFreqChange.setText(String.valueOf(value));
            }
            seekFrequenceChange.setProgress(value);

            // Exit edit mode by clearing focus and hiding keyboard
            edtFreqChange.clearFocus();
            InputMethodManager imm = (InputMethodManager)mApplicationContext.getSystemService(Context.INPUT_METHOD_SERVICE);
            imm.hideSoftInputFromWindow(edtFreqChange.getWindowToken(), 0);
            return true;
        }
        return false;
    });
    ```

!!! note "Check"