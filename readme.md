HW02
===
This is the hw02 sample. Please follow the steps below.

# Build the Sample Program

1. Fork this repo to your own github account.

2. Clone the repo that you just forked.

3. Under the hw02 dir, use:

	* `make` to build.

	* `make clean` to clean the ouput files.

4. Extract `gnu-mcu-eclipse-qemu.zip` into hw02 dir. Under the path of hw02, start emulation with `make qemu`.

	See [Lecture 02 ─ Emulation with QEMU] for more details.

5. The sample is designed to help you to distinguish the main difference between the `b` and the `bl` instructions.  

	See [ESEmbedded_HW02_Example] for knowing how to do the observation and how to use markdown for taking notes.

# Build Your Own Program

1. Edit main.s.

2. Make and run like the steps above.

# HW02 Requirements

1. Please modify main.s to observe the `push` and the `pop` instructions:  

	Does the order of the registers in the `push` and the `pop` instructions affect the excution results?  

	For example, will `push {r0, r1, r2}` and `push {r2, r0, r1}` act in the same way?  

	Which register will be pushed into the stack first?

2. You have to state how you designed the observation (code), and how you performed it.  

	Just like how [ESEmbedded_HW02_Example] did.

3. If there are any official data that define the rules, you can also use them as references.

4. Push your repo to your github. (Use .gitignore to exclude the output files like object files or executable files and the qemu bin folder)

[Lecture 02 ─ Emulation with QEMU]: http://www.nc.es.ncku.edu.tw/course/embedded/02/#Emulation-with-QEMU
[ESEmbedded_HW02_Example]: https://github.com/vwxyzjimmy/ESEmbedded_HW02_Example

--------------------

- [] **If you volunteer to give the presentation next week, check this.**

--------------------

Please take your note here.

1. 實驗目的
撰寫簡易組與觀察'push''pop'兩指令
2. 實驗步驟
先將資料夾 gnu-mcu-eclipse-qemu 完整複製到 ESEmbedded_HW02 資料夾中
根據 ARM infomation center 敘述的'push''pop'用法設計main.s
測試程式main.s ,mov三個值分別給r0,r1,r2 ,接著使用'push'指令將三個值存入記憶體 ,使用'pop'指令將其取出後放入r3,r4,r5 ,觀察其執行步驟 ,使用相同方法觀察不同順序之寫入方式是否會影響'push'及'pop'指令運作
main.s
![image](https://github.com/MingChang0329/ESEmbedded_HW02/blob/master/螢幕快照%202019-03-12%20下午4.27.09.png)

將 main.s 編譯並以 qemu 模擬
![image](https://github.com/MingChang0329/ESEmbedded_HW02/blob/master/螢幕快照%202019-03-12%20下午8.44.42.png)

'push'和'pop'指令皆正常運行
![image](https://github.com/MingChang0329/ESEmbedded_HW02/blob/master/螢幕快照%202019-03-12%20下午8.45.02.png)

'push'指令後方未按升冪排列時 ,出現錯誤
![image](https://github.com/MingChang0329/ESEmbedded_HW02/blob/master/螢幕快照%202019-03-12%20下午8.45.14.png)

3. 結果與討論
'push'指令將後方暫存器內容堆疊入記憶體位址中 ,'pop'指令將記憶體中內容取出 ,放入指定之暫存器中 ,'push'指令後方暫存器需以升冪排列寫入 ,否則會出現錯誤
