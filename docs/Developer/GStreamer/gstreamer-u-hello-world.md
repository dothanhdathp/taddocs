# Hello world!

## Khởi tạo

Sau bài trước và chạy thành công thì bài này sẽ bắt đầu ví dụ đầu tiên với __*gstreamer*__ _(mặc dù chưa hiểu gì hết.)_

- Tạo thư mục `1-hello-world` để chạy ví dụ.
- Trong thư mục khởi tạo tệp `main.c`
- Dán nội dung code dưới đây vào

??? abstract "Code Hello World"
    ```c title="main.c"
    #include <gst/gst.h>

    #ifdef __APPLE__
    #include <TargetConditionals.h>
    #endif

    int
    tutorial_main (int argc, char *argv[])
    {
    GstElement *pipeline;
    GstBus *bus;
    GstMessage *msg;

    /* Initialize GStreamer */
    gst_init (&argc, &argv);

    /* Build the pipeline */
    pipeline =
        gst_parse_launch
        ("playbin uri=https://gstreamer.freedesktop.org/data/media/sintel_trailer-480p.webm",
        NULL);

    /* Start playing */
    gst_element_set_state (pipeline, GST_STATE_PLAYING);

    /* Wait until error or EOS */
    bus = gst_element_get_bus (pipeline);
    msg =
        gst_bus_timed_pop_filtered (bus, GST_CLOCK_TIME_NONE,
        GST_MESSAGE_ERROR | GST_MESSAGE_EOS);

    /* See next tutorial for proper error message handling/parsing */
    if (GST_MESSAGE_TYPE (msg) == GST_MESSAGE_ERROR) {
        g_printerr ("An error occurred! Re-run with the GST_DEBUG=*:WARN "
            "environment variable set for more details.\n");
    }

    /* Free resources */
    gst_message_unref (msg);
    gst_object_unref (bus);
    gst_element_set_state (pipeline, GST_STATE_NULL);
    gst_object_unref (pipeline);
    return 0;
    }

    int
    main (int argc, char *argv[])
    {
    #if defined(__APPLE__) && TARGET_OS_MAC && !TARGET_OS_IPHONE
    return gst_macos_main ((GstMainFunc) tutorial_main, argc, argv, NULL);
    #else
    return tutorial_main (argc, argv);
    #endif
    }
    ```

- Sau đó chạy lệnh sau để __build__:
    ```bash
    gcc main.c -o mains `pkg-config --cflags --libs gstreamer-1.0`
    ```
- Ta được tệp thực thi tên là `main`, chạy thử chương trình:
    ```bash
    ./main
    ```
- Kết quả y hệ code mẫu đầu tiên `basic-tutorial-1`

## Phân tích