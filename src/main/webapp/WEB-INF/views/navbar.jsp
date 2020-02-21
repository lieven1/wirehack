
<!-- NAVBAR -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div id="navbar-menu">
			<div class="navbar-btn">
				<button type="button" class="btn-toggle-fullwidth">
					<i class="lnr lnr-arrow-left-circle"></i>
				</button>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><img src="assets/img/user.png"
						class="img-circle" alt="Avatar"> <span>${username}</span> <i
						class="icon-submenu lnr lnr-chevron-down"></i></a>
					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath}/notifications"><i
								class="lnr lnr-envelope"></i> <span>Meldingen</span></a></li>
						<li><a href="${pageContext.request.contextPath}/settings"><i
								class="lnr lnr-cog"></i> <span>Settings</span></a></li>

						<li><a href="${pageContext.request.contextPath}/logout"><i
								class="lnr lnr-exit"></i> <span>Uitloggen</span></a></li>

					</ul></li>
				<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
			</ul>
		</div>
	</div>
</nav>
<!-- END NAVBAR -->