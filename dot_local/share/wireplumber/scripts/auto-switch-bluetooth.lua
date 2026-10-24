-- Make a Bluetooth output the default sink as soon as it appears, so audio
-- moves to headphones on connect even if another sink was chosen manually.
-- On disconnect, WirePlumber falls back to the previously configured sink.

SimpleEventHook {
  name = "custom/auto-switch-bluetooth",
  interests = {
    EventInterest {
      Constraint { "event.type", "=", "node-added" },
      Constraint { "media.class", "=", "Audio/Sink" },
      Constraint { "node.name", "#", "bluez_output.*" },
    },
  },
  execute = function (event)
    local node = event:get_subject ()
    local source = event:get_source ()
    local om = source:call ("get-object-manager", "metadata")
    local metadata = om:lookup { Constraint { "metadata.name", "=", "default" } }
    if not metadata then
      return
    end

    metadata:set (0, "default.configured.audio.sink", "Spa:String:JSON",
        Json.Object { ["name"] = node.properties ["node.name"] }:to_string ())
  end
}:register ()
