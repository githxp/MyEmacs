;;;; hxp's theme

(deftheme mytheme
  "this provide a dark theme.")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'mytheme
	;;编辑区背景色和前景色
   `(default ((,class (:background "#272822" :foreground "green"))))
	;;光标颜色
   `(cursor ((,class (:background "green"))))
	;;编辑区两侧边缘带颜色
   `(fringe ((,class (:background "#272822"))))

   ;; Highlighting faces
	;;高亮行背景色
   `(highlight ((,class (:background "#383830"))))
	;;区域选择背景色
   `(region ((,class (:background "#FBFFBB"))))
	;;二次选择背景色和前景色
   `(secondary-selection ((,class (:background "darkblue" :foreground "skyblue"))))
	;;当前搜索结果项背景色和前景色
   `(isearch ((,class (:background "black" :foreground "green"))))
	;;搜索结果项背景色
   `(lazy-highlight ((,class (:background "#FF367A"))))
	;;当前搜索替换项背景色和前景色
   `(query-replace ((,class (:inherit isearch :background "yellow" :foreground "red"))))
   `(match ((,class (:background "blue"))))

   ;; Mode line faces
	;;已激活模式栏背景色和前景色
   `(mode-line ((,class (:background "#272822" :foreground "white" :box (:line-width -2 :style released-button)))))
	;;模式栏上下位置标记线颜色
   `(mode-line-buffer-id ((,class (:overline "green" :underline "green"))))
	;;未激活模式栏背景色和前景色
   `(mode-line-inactive ((,class (:inherit mode-line :background "#272822" :foreground "#696969" :box (:line-width -1 :color "#272822") :weight light))))

   ;; Escape and prompt faces
   `(escape-glyph ((,class (:background "yellow" :foreground "white" :box (:line-width 1 :color "blue" :style released-button)))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground "red"))))
	;;常量颜色
   `(font-lock-constant-face ((,class (:foreground "#FFFFFF"))))
	;;函数颜色
   `(font-lock-function-name-face ((,class (:foreground "#FFE500"))))
	;;关键字颜色
   `(font-lock-keyword-face ((,class (:foreground "#FF0090"))))
	;;字符串颜色
   `(font-lock-string-face ((,class (:foreground "#FFE480"))))
	;;注释颜色
   `(font-lock-comment-face ((,class (:foreground "#6D6D6D"))))
	;;注释前缀符颜色
   `(font-lock-comment-delimiter-face ((,class (:foreground "gray50"))))
	;;类和数据类型颜色
   `(font-lock-type-face ((,class (:foreground "#6DE7FF" :bold nil))))
	;;变量名颜色
   `(font-lock-variable-name-face ((,class (:foreground "white" :bold nil))))
	;;警告颜色
   `(font-lock-warning-face ((,class (:foreground "yellow" :weight bold))))

   '(show-paren-mismatch ((t (:background "red"))))
   '(window-number-face ((t (:foreground "red" :weight bold))))

   ;; Compilation faces
	;;错误信息颜色
   `(next-error ((,class (:inherit region :background "green"))))))

(provide 'mytheme)

