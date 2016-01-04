<wrapper>
    <style scoped>
    :scope {
      position: relative;
      height: 100%;
      padding-top: 170px;
      font-family: 'PT Sans', sans-serif;
      box-sizing: border-box;
      transition-property: padding-top;
      transition-duration: 1s;
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
