(defun c:dt()
	(setq obj345 (ssget '((0 . "PDFUNDERLAY"))) ins-pt345 (list 0 0))
	(if (and obj345 (> (sslength obj345) 0))
	  (repeat (sslength obj345)
		(setq obj-ent345 (ssname obj345 0))
		(command "PDFIMPORT" obj-ent345 "" "d")
		(ssdel (ssname obj345 0) obj345)
	  );repeat
	);if
);