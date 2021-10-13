(fn get [opts name]
  (let [val (. opts name)
        key (if (= "style" name) "gui" (.. "gui" name))]
    (if (or (not= nil val) (not= name "style"))
      (.. key "=" (or val "NONE")) 
      "")))

(fn link [group linked-group]
  (vim.cmd (string.format "hi! link %s %s" 
                          group linked-group)))

(fn clear [group]
  (vim.cmd (string.format "hi! %s clear" 
                          group)))

(fn hi [...]
   (let [args [...]]
     (for [idx 1 (length args) 2]
       (let [group (. args idx)
             opts  (. args (+ idx 1))
             fg (get opts :fg)
             bg (get opts :bg)
             sp (get opts :sp)
             style (get opts :style)
             cmd (string.format "hi! %s %s %s %s %s"
                                group fg bg sp style)]
         (if (not= nil opts.link)
           (link group opts.link)
           (vim.cmd cmd))))))

{:hi    hi
 :link  link
 :clear clear}

