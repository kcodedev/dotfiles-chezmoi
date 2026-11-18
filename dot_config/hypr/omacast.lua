-- Replace the default Apps shortcut with Omacast.
o.rebind("SUPER + ALT + SPACE", "Omacast launcher", hl.dsp.global("omacast:toggle"), { submap_universal = true })

-- While Omacast is open, this submap lets Super+J/K reach the launcher.
hl.define_submap("omacast", function()
  hl.bind("SUPER + F24", hl.dsp.no_op()) -- A submap needs one binding to exist.
end)

-- Keep the existing launcher shortcut as an alias.
o.bind("ALT + SHIFT + SPACE", "omacast launcher", hl.dsp.global("omacast:toggle"), { submap_universal = true })

-- Blur behind the launcher; it only shows under Omarchy's Glassy windows,
-- where the card is see-through.
hl.layer_rule({ match = { namespace = "^omacast$" }, blur = true, ignore_alpha = 0.3 })
