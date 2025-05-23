((el-get status "installed" recipe
	 (:name el-get :website
		"https://github.com/dimitri/el-get#readme"
		:description
		"Manage the external elisp bits and pieces you depend upon."
		:type github :branch "master" :pkgname
		"dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/") :features el-get
		:post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized (package-initialize t))
		  (when (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist (feat feats) (unload-feature feat t))))
		  (require 'el-get)))))
