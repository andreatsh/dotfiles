;; Personal emacs config using org-mode

(package-initialize)
(org-babel-load-file "~/.emacs.d/settings.org")
(provide 'init-local)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("34f578e2e4db3d1d624d8d5f7ef50360f88c8bd6d49425c4b64c861fa8eba93d" "cab95d3e0b03b9b6806e8db1f57d8ca8a4b4c35c4509bf1baf302eb844996f49" "d5db7524c0e0d519c185e8fd5487395686f931295afb007ce04e6f0959992f23" "9caa663070262de81e1c13ef35e1227aa2a6b189788a6c8ec9776c7966804f04" "c775f464500fdf3cc557ca6cb952b41b3036573c5f370b4375f9cbef0faf3d63" "77ed96043387face5baf23f6661246667015296fa573ff2b4008516f07cbe502" "5e942cbd1941779a1fe17844b6deaad86035d4a8f3b297b479d09ea89b24c6c9" "fdd4db011bece3f488f60a005b933a7fc93c0cc1df63839adc1210d5cd5d2ff4" "34e63a134af36b549ffa8c82e11c001cf08668fd68059f6577baefadec0a59e1" "14366534cd7a9eee71c28644860051258748d3be50a035f1aeda43c2a93cc4b0" "6f735ac318f1f25e1c1ec811a570ce2ed0da21f641e1c079c59109bd2f86c43a" "6015b5e5aa42d01069a17c1dc79752f9e90dbcb7abfdfe9127bcffacd90a25f6" "25e161de02847b3424ceb573951043ff0834103dd22bfc3dbce28e72cfafeeca" "091d2ad7e59a6e357990053bafd697a17963e628d619ed6aa89f8ae4b277756f" "c1fd297a11a8c044cbd204730238f5ec9e657bd1a54fa18dec36370ce181fd32" default)))
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
