{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='securityContext', url='', help='"SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence."'),
  '#capabilities':: d.obj(help='"Adds and removes POSIX capabilities from running containers."'),
  capabilities: {
    '#withAdd':: d.fn(help='"Added capabilities"', args=[d.arg(name='add', type=d.T.array)]),
    withAdd(add): { capabilities+: { add: if std.isArray(v=add) then add else [add] } },
    '#withAddMixin':: d.fn(help='"Added capabilities"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='add', type=d.T.array)]),
    withAddMixin(add): { capabilities+: { add+: if std.isArray(v=add) then add else [add] } },
    '#withDrop':: d.fn(help='"Removed capabilities"', args=[d.arg(name='drop', type=d.T.array)]),
    withDrop(drop): { capabilities+: { drop: if std.isArray(v=drop) then drop else [drop] } },
    '#withDropMixin':: d.fn(help='"Removed capabilities"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='drop', type=d.T.array)]),
    withDropMixin(drop): { capabilities+: { drop+: if std.isArray(v=drop) then drop else [drop] } },
  },
  '#seLinuxOptions':: d.obj(help='"SELinuxOptions are the labels to be applied to the container"'),
  seLinuxOptions: {
    '#withLevel':: d.fn(help='"Level is SELinux level label that applies to the container."', args=[d.arg(name='level', type=d.T.string)]),
    withLevel(level): { seLinuxOptions+: { level: level } },
    '#withRole':: d.fn(help='"Role is a SELinux role label that applies to the container."', args=[d.arg(name='role', type=d.T.string)]),
    withRole(role): { seLinuxOptions+: { role: role } },
    '#withType':: d.fn(help='"Type is a SELinux type label that applies to the container."', args=[d.arg(name='type', type=d.T.string)]),
    withType(type): { seLinuxOptions+: { type: type } },
    '#withUser':: d.fn(help='"User is a SELinux user label that applies to the container."', args=[d.arg(name='user', type=d.T.string)]),
    withUser(user): { seLinuxOptions+: { user: user } },
  },
  '#seccompProfile':: d.obj(help="\"SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.\""),
  seccompProfile: {
    '#withLocalhostProfile':: d.fn(help="\"localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \\\"Localhost\\\".\"", args=[d.arg(name='localhostProfile', type=d.T.string)]),
    withLocalhostProfile(localhostProfile): { seccompProfile+: { localhostProfile: localhostProfile } },
    '#withType':: d.fn(help="\"type indicates which kind of seccomp profile will be applied. Valid options are:\\n\\nLocalhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.\\n\\nPossible enum values:\\n - `\\\"Localhost\\\"` indicates a profile defined in a file on the node should be used. The file's location relative to \u003ckubelet-root-dir\u003e/seccomp.\\n - `\\\"RuntimeDefault\\\"` represents the default container runtime seccomp profile.\\n - `\\\"Unconfined\\\"` indicates no seccomp profile is applied (A.K.A. unconfined).\"", args=[d.arg(name='type', type=d.T.string)]),
    withType(type): { seccompProfile+: { type: type } },
  },
  '#windowsOptions':: d.obj(help='"WindowsSecurityContextOptions contain Windows-specific options and credentials."'),
  windowsOptions: {
    '#withGmsaCredentialSpec':: d.fn(help='"GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field."', args=[d.arg(name='gmsaCredentialSpec', type=d.T.string)]),
    withGmsaCredentialSpec(gmsaCredentialSpec): { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } },
    '#withGmsaCredentialSpecName':: d.fn(help='"GMSACredentialSpecName is the name of the GMSA credential spec to use."', args=[d.arg(name='gmsaCredentialSpecName', type=d.T.string)]),
    withGmsaCredentialSpecName(gmsaCredentialSpecName): { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } },
    '#withHostProcess':: d.fn(help="\"HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.\"", args=[d.arg(name='hostProcess', type=d.T.boolean)]),
    withHostProcess(hostProcess): { windowsOptions+: { hostProcess: hostProcess } },
    '#withRunAsUserName':: d.fn(help='"The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."', args=[d.arg(name='runAsUserName', type=d.T.string)]),
    withRunAsUserName(runAsUserName): { windowsOptions+: { runAsUserName: runAsUserName } },
  },
  '#withAllowPrivilegeEscalation':: d.fn(help='"AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='allowPrivilegeEscalation', type=d.T.boolean)]),
  withAllowPrivilegeEscalation(allowPrivilegeEscalation): { allowPrivilegeEscalation: allowPrivilegeEscalation },
  '#withPrivileged':: d.fn(help='"Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='privileged', type=d.T.boolean)]),
  withPrivileged(privileged): { privileged: privileged },
  '#withProcMount':: d.fn(help='"procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='procMount', type=d.T.string)]),
  withProcMount(procMount): { procMount: procMount },
  '#withReadOnlyRootFilesystem':: d.fn(help='"Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='readOnlyRootFilesystem', type=d.T.boolean)]),
  withReadOnlyRootFilesystem(readOnlyRootFilesystem): { readOnlyRootFilesystem: readOnlyRootFilesystem },
  '#withRunAsGroup':: d.fn(help='"The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='runAsGroup', type=d.T.integer)]),
  withRunAsGroup(runAsGroup): { runAsGroup: runAsGroup },
  '#withRunAsNonRoot':: d.fn(help='"Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."', args=[d.arg(name='runAsNonRoot', type=d.T.boolean)]),
  withRunAsNonRoot(runAsNonRoot): { runAsNonRoot: runAsNonRoot },
  '#withRunAsUser':: d.fn(help='"The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."', args=[d.arg(name='runAsUser', type=d.T.integer)]),
  withRunAsUser(runAsUser): { runAsUser: runAsUser },
  '#mixin': 'ignore',
  mixin: self,
}
