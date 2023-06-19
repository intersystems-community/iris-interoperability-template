Class dc.Demo.Setup
{
    ClassMethod Init(TokenValue As %String) As %Status
{
    set st=$$$OK
    set production="dc.Demo.Production"

    set item="dc.Demo.RedditService"
    set st=##class(shvarov.i14y.Settings).SetValue(production,item,"Limit",TokenValue)
    return st
}

ClassMethod StartProduction()
{
    set prodClass = "dc.Demo.Production"
    do ##class(%EnsembleMgr).SetAutoStart($namespace, prodClass)
    job ##class(Ens.Director).StartProduction(prodClass)
}
}