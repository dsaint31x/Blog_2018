---
title: "[Python] Conversion Analyze file to NIfTI file"
author: dsaint31

categories: 
  - Python
last_modified_at: 2018-10-18
use_math: false
tags: 
  - NIfTI
  - Analyze
toc: true
---

# NIfTI (Neuroimaging Informations Technology Initiative)

@(Python)

## install nibabel 
`Analyze` 영상 파일을 `NIfTI`로 변경해야 하는 일이 종종 있던터라 `python`에서 처리할 수 있는 라이브러리를 설치함.

`conda` 환경에서도 설치가 되는 `nibabel`을 설치하고, 간단히 처리 완료.

python을 많이 쓰게 되는 터라, 한번 자세히 `nibabel` 라이브러리 사용법을 살펴보면 도움이 많이 될 듯 함.

```bash
(base) dsaint31@331519e933a4:/data/Blog_2018$ conda install -c conda-forge nibabel
Solving environment: done

## Package Plan ##

  environment location: /home/dsaint31/miniconda3

  added / updated specs:
    - nibabel


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    conda-4.5.11               |        py36_1000         651 KB  conda-forge
    openssl-1.0.2p             |       h470a237_1         3.1 MB  conda-forge
    certifi-2018.10.15         |        py36_1000         138 KB  conda-forge
    nibabel-2.3.1              |     pyh24bf2e0_0         2.6 MB  conda-forge
    ca-certificates-2018.10.15 |       ha4d7672_0         135 KB  conda-forge
    pydicom-1.2.0              |             py_0         5.3 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        11.9 MB

The following NEW packages will be INSTALLED:

    nibabel:         2.3.1-pyh24bf2e0_0 conda-forge
    pydicom:         1.2.0-py_0         conda-forge

The following packages will be UPDATED:

    ca-certificates: 2018.03.07-0                   --> 2018.10.15-ha4d7672_0 conda-forge
    certifi:         2018.10.15-py36_0              --> 2018.10.15-py36_1000  conda-forge
    conda:           4.5.11-py36_0                  --> 4.5.11-py36_1000      conda-forge
    openssl:         1.0.2p-h14c3975_0              --> 1.0.2p-h470a237_1     conda-forge

Proceed ([y]/n)? y


Downloading and Extracting Packages
conda-4.5.11         | 651 KB    | ############################################################################# | 100%
openssl-1.0.2p       | 3.1 MB    | ############################################################################# | 100%
certifi-2018.10.15   | 138 KB    | ############################################################################# | 100%
nibabel-2.3.1        | 2.6 MB    | ############################################################################# | 100%
ca-certificates-2018 | 135 KB    | ############################################################################# | 100%
pydicom-1.2.0        | 5.3 MB    | ############################################################################# | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

## Conversion Analyze to NIfTI
변경만 한다면 아래와 같이 몇줄의 라인으로 종료이다.

```python
import nibabel as nib
import os
import numpy as np

img = nib.load('/data/test4/test1_rsl.img')
nib.save(img,'/data/test/MSCT_2_1.nii')

img2 = nib.load('/data/test4/test2_rsl.img')
nib.save(img2,'/data/test4/MSCT_1_1.nii')
```

## References 
*[nibabel](http://nipy.org/nibabel/nibabel_images.html#loading-and-saving)
