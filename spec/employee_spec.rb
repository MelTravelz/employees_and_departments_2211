require 'rspec'
require './lib/employee'

RSpec.describe Employee do

  it 'exists' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi).to be_instance_of(Employee)
  end

  it "has attributes" do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi.name).to eq("Bobbi Jaeger")
    expect(bobbi.age).to eq(30)
    expect(bobbi.salary).to eq(100000)
  end

  it "can #give_raise" do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})

    expect(bobbi.give_raise(5000)).to eq(bobbi)
    expect(bobbi.salary).to eq(105000)
  end 

end