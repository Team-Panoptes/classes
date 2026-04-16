En essayant d'activer l'[[environnement virtuel]], vous pourriez tomber face à une erreur de permissions, du type suivant:

```Powershell
PS C:\Python> .\venv\Scripts\activate                                         
.\venv\Scripts\activate : File C:\Python\venv\Scripts\Activate.ps1 cannot be 
loaded because running scripts is disabled on this system. For more 
information, see about_Execution_Policies at 
https:/go.microsoft.com/fwlink/?LinkID=135170.
At line:1 char:1
+ .\venv\Scripts\activate
+ ~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) [], PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

La solution se trouve bien sur la page [indiquée](https:/go.microsoft.com/fwlink/?LinkID=135170) dans le message d'erreur.

En résumé, pour résoudre le problème, il suffit d'autoriser l'exécution des scripts pour l'utilisateur actuel:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

