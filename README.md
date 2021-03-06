<p align="center"><img alt="CORMAS" src="assets/logos/CormasLogoBig.png" style="width: 15%; height: 15%">
<h1 align="center">[CORMAS]</h1>
  <p align="center">
    COmmon pool Ressources and Multi-Agent Simulations
    <br>
    <a href="https://github.com/cormas/cormas/wiki"><strong>Explore the docs »</strong></a>
    <br>
    <br>
    <a href="https://github.com/cormas/cormas/issues/new?labels=Type%3A+Defect">Report a defect</a>
    |
    <a href="https://github.com/cormas/cormas/issues/new?labels=Type%3A+Feature">Request feature</a>
  </p>
</p>

[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)
[![Build Status](https://travis-ci.org/cormas/cormas.svg?branch=master)](https://travis-ci.org/cormas/cormas)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/PolyMathOrg/PolyMath/master/LICENSE)

This is an ongoing effort to port CORMAS to Pharo ecosystem: http://www.pharo.org/
Current stable version of CORMAS is based on VisualWorks 7.6 and can be found on: http://cormas.cirad.fr/indexeng.htm

Some documentation (to be cleaned and reorganized) about Cormas is available on the Wiki here:
https://github.com/cormas/documentation

If you want to contribute to CORMAS please read: https://github.com/cormas/cormas/blob/master/CODE_OF_CONDUCT.md

## How to install Cormas

* Download a Pharo 8.0 image+VM depending of your platform: http://pharo.org/download
* Load Cormas: Open Pharo 8.0 image then click anywhere to open the main menu. Choose Playground to execute the following script. Paste the script below in Playground, select all then right-click and choose Do it to execute this.

```Smalltalk
Metacello new
	onWarningLog;
	repository: 'github://cormas/cormas/repository';
	baseline: 'Cormas';
	load.
```
All packages load into the Cormas-* package names.

There is from time to time, [loading errors with github](https://github.com/cormas/cormas/issues/101). If it happens, just reexecute the Metacello expression.

If you want to contribute code to CORMAS, this is better to follow the contributing guide: https://github.com/cormas/cormas/blob/master/CONTRIBUTING.md

## How to install with Command Line interface (CLI)

You can install CORMAS through Unix command line. It works as follow:

```bash
mkdir mydir
cd mydir
curl https://get.pharo.org | bash
./pharo Pharo.image eval "Metacello new onWarningLog; repository: 'github://cormas/cormas/repository'; baseline: 'Cormas'; load. Smalltalk snapshot: true andQuit: true"
```

## Licence

Cormas is licensed under MIT. See : http://opensource.org/licenses/MIT

## Where to discuss about CORMAS development

Join us on the cormas-dev mailing-list: http://groups.google.com/group/cormas-dev
