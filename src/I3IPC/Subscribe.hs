module I3IPC.Subscribe
    ( Subscribe
    )
where

-- | Subscribe from i3 have the following types (https://i3wm.org/docs/ipc.html#_events)
data Subscribe =
    -- | Sent when the user switches to a different workspace, when a new workspace is initialized or when a workspace is removed (because the last client vanished). 
    Workspace
    -- | Sent when RandR issues a change notification (of either screens, outputs, CRTCs or output properties). 
    | Output
    -- | Sent whenever i3 changes its binding mode. 
    | Mode
    -- | Sent when a client’s window is successfully reparented (that is when i3 has finished fitting it into a container), when a window received input focus or when certain properties of the window have changed. 
    | Window
    -- | Sent when the hidden_state or mode field in the barconfig of any bar instance was updated and when the config is reloaded. 
    | BarConfigUpdate
    -- | Sent when a configured command binding is triggered with the keyboard or mouse 
    | Binding
    -- | Sent when the ipc shuts down because of a restart or exit by user command 
    | Shutdown
    -- | Sent when the ipc client subscribes to the tick event (with "first": true) or when any ipc client sends a SEND_TICK message (with "first": false).  
    | Tick
    deriving (Enum, Eq)

instance Show Subscribe where
    show Workspace       = "workspace"
    show Output          = "output"
    show Mode            = "mode"
    show Window          = "window"
    show BarConfigUpdate = "barconfig_update"
    show Binding         = "binding"
    show Shutdown        = "shutdown"
    show Tick            = "tick"
