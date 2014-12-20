<cfset headerActive = "intro"/>

<nav class="top-bar" data-topbar role="navigation">
	<ul class="title-area">
		<li class="toggle-topbar menu">
			<a href="#">
				<span>Menu</span>
			</a>
		</li>
	</ul>
	<section class="top-bar-section">
		<ul class="left">
			<li class="icon">
				<a href="index.cfm" class="hide-for-small-only">
					<img src="images/Logo3.png" width="108" height="42" class="hide-for-small-only">
				</a>
				<a href="index.cfm?event=home" class="show-for-small-only"><b>QUIZAPPED</b></a>
			</li>
			<li class="divider"></li>
			<li <cfif eventHead EQ "intro">class="active"</cfif>>
				<a href="index.cfm?event=home">Introduction</a>
			</li>
			<li class="divider"></li>
			<li <cfif eventHead EQ "devlog">class="active"</cfif>>
				<a href="index.cfm?event=devlog">Dev Log</a>
			</li>
			<li class="divider"></li>
			<li class="has-dropdown">
				<a href="#">Links</a>
				<ul class="dropdown">
					<li>
						<a href="#">First link in dropdown</a>
					</li>
					<li class="active">
						<a href="#">Active link in dropdown</a>
					</li>
				</ul>
			</li>
			<li class="divider"></li>
			<li class="has-form">
				<div class="row collapse">
					<div class="large-8 small-9 columns">
						<input type="text" placeholder="Let's see...">
					</div>
					<div class="large-4 small-3 columns">
						<a href="#" class="alert button expand">Search</a>
					</div>
				</div>
			</li>
			<li class="divider"></li>
			<li <cfif eventHead EQ "about">class="active"</cfif>>
				<a href="index.cfm?event=about">About</a>
			</li>
			<li class="divider"></li>
			<li>
				<a href="#" data-reveal-id="myModal">Log In</a>
			</li>
			<li class="divider"></li>
		</ul>
	</section>
</nav>

<div id="myModal" class="reveal-modal small" data-reveal>
	<h2>Project Member Login</h2>
	<p class="lead">You do remember your details... right?</p>
	<form name="loginForm" id="loginForm" method="post" action="">
		<input type="text" name="loginUsername" id="loginUsername" placeholder="Username"/>
		<input type="password" name="loginPassword" id="loginPassword" placeholder="Password"/>
		<input type="submit" name="loginSubmit" id="loginSubmit" value="Log In" class="button radius"/>
	</form>
	<a class="close-reveal-modal">&#215;</a>
</div>