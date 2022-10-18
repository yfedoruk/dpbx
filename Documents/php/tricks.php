<?php

// if firs false, second doesn't run
!isset($this->dirsCache[$path]) && $this->cacheDir($path);
