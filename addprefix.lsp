(defun c:AddPrefix (/ ent obj txt prefix newtxt)
  (setq prefix "DP_IL_") ; Replace "PREFIX" with your desired prefix
  (prompt "\nSelect the text object to add the prefix: ")
  (setq ent (car (entsel))) ; Select the text entity
  (setq obj (entget ent)) ; Get the entity data
  (setq txt (cdr (assoc 1 obj))) ; Extract the current text
  (setq newtxt (strcat prefix txt)) ; Concatenate the prefix with the current text
  (entmod (subst (cons 1 newtxt) (assoc 1 obj) obj)) ; Modify the entity with the new text
  (entupd ent) ; Update the entity in the drawing
  (princ) ; Exit quietly
)

(princ "\nType ADDPREFIX to run the command.")
(princ)
