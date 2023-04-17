--use testproject
select top 5 location as Country,
MAX(cast(total_deaths as int)) as totaldeath
from CovidDeaths
where continent is not null
group by location
order by totaldeath desc


select top 1 * from CovidDeaths;

select location, date, total_cases, new_cases, total_deaths, population
from CovidDeaths
where location = 'India'
order by 1,2

select location, date, total_cases, (total_deaths/total_cases)*100 as DeathPercentage
from CovidDeaths
where location = 'India'


Select Location, date, total_cases,total_deaths, (cast(total_deaths as int)/total_cases) as DeathPercentage
From CovidDeaths
Where location like '%India%'
and continent is not null 
order by 1,2