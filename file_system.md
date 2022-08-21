# File System
```mermaid
    graph TD;
    / -->bin;
    / --> boot;
    / -->dev;
    / -->etc;
    / -->home;
    / -->root;
    / -->run;
    / -->sbin;
    / -->tmp;
    / -->usr;
    / -->var;
    home -->eve;
    home -->bob;
    home -->alice;
    usr -->tmp;
    usr --> sbin;
    usr -->local;
    usr -->bin;
    var -->tmp;
```

