-- Replace the default Apps shortcut with Omacast.
o.rebind("SUPER + ALT + SPACE", "Omacast launcher", hl.dsp.global("omacast:toggle"), { submap_universal = true })

-- While Omacast is open, this submap lets Super+J/K reach the launcher.
hl.define_submap("omacast", function()
  hl.bind("SUPER + F24", hl.dsp.no_op()) -- A submap needs one binding to exist.
end)
