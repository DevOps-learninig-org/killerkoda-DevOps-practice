First of all - useful links:
- [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)
- [Nodes](https://kubernetes.io/docs/concepts/architecture/nodes/)
- [Command line tool (kubectl) manual](https://kubernetes.io/docs/reference/kubectl/)
- `k nodes -h`{{exec}}
- `k cluster-info -h`{{exec}}

Task list:
- Get list of nodes in Kubernetes cluster
- Get common cluster information

<details><summary>Hints for the task</summary>
<pre>
  $ k get nodes -o wide
  $ k describe node controlplane
  $ k config view
</pre>
</details>
