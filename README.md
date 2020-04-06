---


---

<p><strong>CmdCursor.dll documentation</strong><br>
<em>CmdCursor</em> is a versatile command-line plugin for windows, that lets you use a Window’s Title to temporarily toggle and override a window’s associated mouse cursor.</p>
<ul>
<li>
<p><em>CmdCursor may be used in the back-end, in scenarios where a user may want to change the mouse cursor for :</em></p>
<blockquote>
<ol>
<li>Pixel Painting precision (I.e. during editing)</li>
<li>Allow different pointers for various applications during presentations.</li>
<li>Game development (I.e. shooting precision)</li>
<li>Fancy pointers during screen recording.</li>
<li>Custom RainMeter skins Cursors.<br>
etc …</li>
</ol>
</blockquote>
</li>
</ul>
<p>Applications mainly implement custom cursors from binary resources    like executable (.exe) files or DLLs, rather than creating the cursor    at run time. However CmdCursor lets you call a graphic directly from    a .ANI or .CUR bitmap resource.</p>
<h3 id="syntax-and-usage">Syntax and Usage</h3>
<p><code>CmdCursor.dll /?</code> or <code>CmdCursor.dll --?</code> or <code>CmdCursor.dll -?</code></p>
<blockquote>
<p>Running the above command on Command Prompt will print the help documentation to the std-out stream.</p>
</blockquote>
<hr>
<h2 id="example">Example</h2>
<pre class=" language-batch"><code class="prism  language-batch"><span class="token command"><span class="token keyword">CmdCursor</span>.dll <span class="token parameter attr-name">/t</span> <span class="token string">"VLC media player"</span> <span class="token parameter attr-name">/c</span> <span class="token string">"%cd%/Mycursor.ani"</span></span>
</code></pre>
<blockquote>
<p>The above example toggles the cursor for VLC media player window ,to change from the default cursor to a cursor in the working directory called <code>Mycursor.ani</code> CmdCursor.dll exits after VLC is closed.</p>
</blockquote>
<h4 id="nb-">NB :</h4>
<ul>
<li>
<p>Forced properties in various UI controls ( i.e. edit controls, labels    and buttons) may explicitly force the mouse cursor to change ,    therefore <strong>CmdCursor</strong> won’t have any effect on these  type of controls, unless their properties allow their associated control cursor to be overridden.</p>
</li>
<li>
<p>To allow redrawing the new cursor on a target window (after calling <strong>CmdCursor.dll</strong>), the old cursor is not overridden until ; either the mouse moves From and To the window, focus is regained, or a system command is executed so the system automatically redraws the cursor design associated with the window to which the cursor is pointing.</p>
</li>
<li>
<p>Destroying the target window while CmdCursor is running will get you stuck to a custom cursor, to avoid this , emulate a separate instance of <code>CmdCursor.dll</code> using  <code>Start /b</code> command. For help  , run <code>Start /?</code> at the cmd console.</p>
</li>
<li>
<p>Cursors can not only be either monochrome or color but also static or animated. The type of cursor used on a particular computer system depends on the system’s display. Old displays such as VGA do not support color or animated cursors. New display, whose display    drivers    use the device-independent bitmap (DIB) engine, do support them.</p>
</li>
</ul>
<h2 id="exit-codes">Exit Codes</h2>
<p>If the FQPN to the cursor ID not valid, or the window title is not found, then CmdCursor will terminate with an exit-code. This exit codes are parsed to DOS variable <code>%errorlevel%</code>.</p>
<pre><code>(0) - Success / No Error.  
(1) - Non existant FQPN TO CURSOR handle parsed.
(2) - Window title not found.
    - Invalid Cursor extension prefix. (Currently supported are .ani and .cur)  
</code></pre>

