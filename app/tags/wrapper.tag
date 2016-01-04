<wrapper>
    <div class="container">
      <yield/>
    </div>

    <style scoped>
    :scope .container{
      position: relative;
      height: 100%;
      padding-top: 170px;
      -webkit-box-sizing: border-box;
      -webkit-transition-property: padding-top;
      -webkit-transition-duration: 1s;
      -moz-box-sizing: border-box;
      -moz-transition-property: padding-top;
      -moz-transition-duration: 1s;
    }
  </style>
  <script>
    function listeners(onOrOff) {
      const method = onOrOff ? 'on' : 'off';
      this._handleWindowResize = this._handleWindowResize || handleWindowResize.bind(this);

      $(window)[method]('resize', this._handleWindowResize);
    }

    function handleWindowResize() {
      const padding = Math.max(window.innerHeight / 2 - 200, 0);

      $(this.root).css({
        'padding-top': padding
      });
    }
    this.on('mount', listeners.bind(this, true));
    this.on('unmount', listeners.bind(this, false));
  </script>
</wrapper>
