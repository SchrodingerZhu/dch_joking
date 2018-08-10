defmodule DCH do
    import Ecto.Query
    alias Test2.Repo
    alias Test2.User
    alias Test2.Statistic
    #Repo.insert(%User{name: "Jimmy", email: "jimmyzhu1999@protonmail.com"})
    def get_dch(s) do
        "DCH：" <> s
    end
    def get_jimmy_email() do
        case Repo.all(from u in User, where: u.name == "Jimmy2" ,select: u.email) do
            [] -> 
                Repo.insert(%User{name: "Jimmy2", email: "jimmyzhu1999@protonmail.com"})
                get_jimmy_email()
            [email] -> 
                email
        end
    end
    def update_times() do
        times = get_times() + 1
        [a] = Repo.all(from t in Statistic, where: t.name == "visit" ,select: t)
        Ecto.Changeset.change(a, times: times) |> Test2.Repo.update()
        "<!-- you are the No.#{times} visitor! -->"
    end
    
    def get_times() do
        case Repo.all(from t in Statistic, where: t.name == "visit" , select: t.times) do
          [] ->
            Repo.insert(%Statistic{name: "visit",times: 0})
            0
          [times] ->
            times
        end
    end
end