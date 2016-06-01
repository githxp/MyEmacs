(package-initialize)

;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;			 ("marmalade" . "http://marmalade-repo.org/packages/")
;			  ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'package-archives'("popkit" . "http://elpa.popkit.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("7126d88eb94b4ea43186427f1b287f9c850cf29be7ba5c1b560ee7be50e58743" "13c4c0f8d59e4763ef926bd44c66be41ed15c4371bab099992d3fc048efa75fe" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(jdee-jdk-registry (quote (("1.8.0_91" . "/usr/java/jdk1.8.0_91"))))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(send-mail-function nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
;不显示工具栏

;;设置字体
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "文泉驿等宽微米黑" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))

(global-linum-mode t)

(desktop-save-mode 1);保存布局

(font-lock-add-keywords 'lisp-mode '("[(]" "[)]"));lisp模式匹配括号

(global-hl-line-mode 1);高亮当前行

(setq show-parse--mode t)

(global-font-lock-mode t);打开语法高亮

(blink-cursor-mode -1);关闭光标闪动

(setq cursor-type '(bar . 2));设置光标宽度

;;加载插件目录
(defun add-subdirs-to-load-path (dir)
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "/home/hxp/.myEmacs")

(require 'ecb);加载ecb

(setq ecb-auto-activate nil);关闭自动启动ecb

(setq ecb-tip-of-the-day nil);关闭ecb每日提示

(global-set-key (kbd "<f12>") 'ecb-activate);设置F12键打开ecb

(global-set-key (kbd "C-<f12>") 'ecb-deactivate);设置c-F12关闭ecb

(global-set-key (kbd "<f8>") 'windmove-left);设置Ｆ8移动到ecb左窗口

(global-set-key (kbd "<f9>") 'windmove-right);设置Ｆ9移动到ecb右窗口

(global-set-key (kbd "<f7>") 'ecb-restore-default-window-sizes);设置Ｆ7恢复ecb窗口

(setq make-backup-files nil);关闭自动备份功能

(setq auto-save-default nil);不生成名为#filename#的临时文件

(setq echo-keystrokes 0.1);尽快显示按键序列提示

(global-set-key (kbd "<f6>") 'ace-window);绑定切换窗口快捷键

(setq aw-background nil);选择窗口时不显示灰色背景

(fset 'yes-or-no-p 'y-or-n-p);简化yes和no为y和n

(global-set-key (kbd "<f5>") 'calendar);为日历设置快捷键

(setq calendar-week-start-day 1);设置日历从星期一开始

;;为日历设置经纬度
(setq calendar-latitude 28.372144)
(setq calendar-longitude 112.814784)
(setq calendar-location-name "ChangSha")

(add-hook 'find-file-hook 'highlight-parentheses-mode t);打开高亮匹配模式

(setq inferior-lisp-program "/usr/bin/sbcl");加载sbcl

;;加载slime
(require 'slime)
(slime-setup '(slime-fancy))

(require 'highlight-parentheses);加载highlight-parentheses

(require 'web-mode);加载web-mode

;(require 'jdee);加载jedd

;(setq jdee-server-dir "/home/hxp/图片/jdee-server-master/target");指定jdee-server-dir

(require 'mytheme);加载自定义主题
