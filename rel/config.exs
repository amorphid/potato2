use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: Mix.env

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"C/_92]R2t,(UOVGg/n2zWiMV/LyD_85~qR*e^|<ubea:.f_|xs%n&ODp;1C`e9q|"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"4:m~%yf*0CM[z<DAFLO&:I4Ng&e`3^xILoy,3h9hfO@=mVab=aMp&SenjDd[qO[("
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :potato do
  set version: current_version(:potato)
end
