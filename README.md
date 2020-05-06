---
![](lol.gif)

---

<p>🍂Versatile Win32 console application that allows you to temporarily change a window’s associated mouse cursor, based on the window title.</p>
<ul>
<li>
<p>May be used in the back-end  in scenarios where a user may want to change the mouse cursor for :</p>
<blockquote>
<p>📐Pixel Painting precision (I.e. during editing)<br>
🎫 Allow different pointers for various applications during presentations.👨🏼‍🏫<br>
🎮 Game development (I.e. shooting precision 💥🔫)<br>
😎 Fancy pointers during screen recording.<br>
🤪 Custom RainMeter skin Cursors.</p>
</blockquote>
</li>
</ul>
<p>📰 Applications mainly implement custom cursors from binary resources like executable (.exe) files or DLLs, rather than creating the cursor    at run time. <br> However CmdCursor lets you call a graphic directly from    a .ANI or .CUR resource.</p>
<h3 id="💡-syntax-and-usage">💡 Syntax and Usage</h3>
<p><code>CmdCursor.dll /?</code> or <code>CmdCursor.dll --?</code> or <code>CmdCursor.dll -?</code></p>
<blockquote>
<p>Running the above command on Command Prompt will print the help documentation to the stdout stream.</p>
</blockquote>
<pre class=" language-batch"><code class="prism  language-batch"><span class="token command"><span class="token keyword">CmdCursor</span>.dll <span class="token parameter attr-name">/t</span> <span class="token string">"VLC media player"</span> <span class="token parameter attr-name">/c</span> <span class="token string">"%cd%/Mycursor.ani"</span></span>
</code></pre>
<blockquote>
<p>The above example toggles the cursor for VLC media player window ,to change from the default cursor to a cursor in the working directory <br>  called <code>Mycursor.ani</code> CmdCursor.dll exits after VLC is closed.</p>
</blockquote>
<h4 id="💡-nb-">💡 NB :</h4>
<p>🎫🎫 Forced properties in various UI controls ( i.e. edit controls, labels    and buttons) may explicitly force the mouse cursor to change , <br>  therefore <strong>CmdCursor</strong> won’t have any effect on these  type of controls, unless their properties allow their associated control cursor to be overridden.</p>
<p>🔁🔁 To allow redrawing the new cursor on a target window (after calling <strong>CmdCursor.dll</strong>), the old cursor is not overridden until ; <br> either the mouse moves From and To the window, focus is regained, or a system command is executed so the system automatically redraws the <br> cursor design associated with the window to which the cursor is pointing.</p>
<p>🏴‍☠️Destroying the target window while CmdCursor is running will get you stuck to a custom cursor, to avoid this , emulate a separate instance using  <code>Start</code> command. For help  , run <code>Start /?</code> at the cmd console.</p>
<p>🔰🔰 Cursors can not only be either monochrome or color but also static or animated. The type of cursor used on a particular computer system depends <br>  on the system’s display. Therefore, old displays such as VGA do not support color or animated cursors. New displays, whose display drivers use the device-independent bitmap (BID) engine, do support them 👌</p>
<h2 id="exit-codes">Exit Codes</h2>
<p>If the FQPN to the cursor ID not valid, or the window title is not found, then CmdCursor will terminate with an exit-code. <br> This exit codes will be  parsed to DOS variable <code>%errorlevel%</code> and can be verified using; <code>Echo %errorlevel%</code></p>
<pre><code>✔️✔️ (0) - Success / No Error.  
❌❌ (1) - Non existant FQPN TO CURSOR handle parsed.
❌❌ (2) - Window title not found.
❌❌ (3) - Invalid Cursor extension prefix.
		    Currently supported are .ani and .cur
</code></pre>

