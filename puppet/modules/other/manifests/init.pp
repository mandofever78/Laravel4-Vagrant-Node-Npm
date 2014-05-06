class other 
{
    package 
    { 
        "curl":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "git":
            ensure  => latest,
            require => Exec['apt-get update']
    }
}
