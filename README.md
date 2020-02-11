k0s on k3s
==========

At the time of writing, [k0s.io](https://k0s.io) is deployed on a managed k3s service. 
The service was provided (almost) for free by the [#KUBE100](https://www.civo.com/blog/kube100-is-here) beta program started by Civo Cloud. 
I'd like to thank Civo for providing developers such great service.

This repository contains the yaml files for deploying k0s on k3s (api version v16.3). 
You should be able to deploy it on any recent kubernetes version too.

I'll create a helm chart later when I have the time. 
Currently there are only static yaml files with hard coded values, so you may have to make some changes before you do `kubectl apply -f`.
