# Menu Option

```java title="MainActivity.java"
public class MainActivity extends AppCompatActivity {
    @Override
    public boolean onCreateOptionsMenu(final Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        mMenu = menu;
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

        @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_audio) {
            try {
                // 
            } catch (IOException e) {
                e.printStackTrace();
            }
            return true;
        }
        if (id == R.id.action_video) {
            try {
                // 
            } catch (IOException e) {
                e.printStackTrace();
            }
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
```

```xml title="menu_main.xml"
<?xml version="1.0" encoding="utf-8"?>
<menu xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools" tools:context=".MainActivity"
    android:id="@+id/main_menu">
    <item android:id="@+id/action_play" android:title="@string/action_play"
        android:orderInCategory="100" app:showAsAction="never" >
        <menu>
            <item android:id="@+id/action_audio" android:title="@string/action_audio" />
            <item android:id="@+id/action_video" android:title="@string/action_video" />
        </menu>
    </item>
</menu>
```

```xml title="strings.xml"
<resources>
    <string name="app_name">MediaPlayer</string>
    <string name="hello_world">Hello world!</string>
    <string name="action_play">Play</string>
    <string name="action_audio">Audio</string>
    <string name="action_video">Video</string>
</resources>
```