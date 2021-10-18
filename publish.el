(require 'ox-publish)
(setq org-publish-project-alist
      '(("appunti"
	 :base-directory "./org/"
	 :base-extension "org"
	 :publishing-directory "./public_html/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 6
	 :auto-preamble t
	 :sitemap-filename "index.org"
	 :sitemap-title "Appunti Magistrale"
	 :sitemap-style list
	 
	 )
	("static"
	 :base-directory "./assets/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3"
	 :publishing-directory "./public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	("images"
	 :base-directory "./images/"
	 :base-extension "png\\|jpg\\|gif\\|pdf\\|mp3"
	 :publishing-directory "./public_html/images"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
       ("all" :components ("appunti" "static" "images"))
	)
      )
