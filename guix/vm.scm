(use-modules (gnu))
(use-service-modules networking ssh)
(use-package-modules bootloaders ssh)

(operating-system
 (host-name "vm")
 (timezone "Asia/Tokyo")
 (bootloader (bootloader-configuration
              (bootloader grub-bootloader)
              (target "/dev/vda")
              (terminal-outputs '(console))))
 (file-systems (cons (file-system
                      (mount-point "/")
                      (device "/dev/vda1")
                      (type "ext4"))
                     %base-file-systems))
 (services
  (append (list (service dhcp-client-service-type)
                (service openssh-service-type
                         (openssh-configuration
                          (openssh openssh-sans-x)
                          (permit-root-login #t)
                          (authorized-keys
                           `(("root" ,(local-file "id_rsa.pub")))))))
  %base-services)))
