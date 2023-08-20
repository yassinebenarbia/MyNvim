return{

  neorg = {

    setup = function(ext_config, config)
      -- access extension config and user config
    end,
    exports = {
      stuff = "t"
    },

  },

  xnorg = {

    setup = function(ext_config, config)
      -- access extension config and user config
    end,

    exports = {
      stuff = function ()
        print('dd')
        print('dd')
      end
    },

  },

}

