if (window.Controllers) {
    // Firefox29ではwindow.controllersはwindow.Controllersにリネームされたけど，aceのuseragent.jsはwindow.controllersを見ているので，こちら側でなんとかする
    window.controllers = window.Controllers;
}
