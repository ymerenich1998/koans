ABOUT_CONTROL_STATEMENTS
  #TEST_1 —> def test_break_if_statement
  def test_break_if_statement
    i=12;
    result=[];
    while true
      break if i>30
      res«i if i%2==1
      i+=1
    end
    assert_equal [13, 15, 17, 19, 21, 23, 25, 27, 29],result
  end

ABOUT_ARRAY_ASSIGNMENT
#TEST_3 —> def test_parallel_assignments_with_extra_values
def test_parallel_assignments_with_extra_values
 first_name, last_name = ["John", "Smith", "III"]
    assert_equal "John", first_name
    assert_equal "Smith", last_name

    # my test
    name1 , name2 = last_name
    assert_equal "Smith", name1
    assert_equal nil, name2
  end
##

ABOUT_ARRAYS
#Test_4 —> def test_slicing_arrays_2
def test_slicing_arrays
    array = [:peanut, :butter, :and, :jelly]

    assert_equal [:peanut], array[0,1]
    assert_equal [:peanut, :butter], array[0,2]
    assert_equal [:and, :jelly], array[2,2]
    assert_equal [:and, :jelly], array[2,20]
    assert_equal [], array[4,0]
    assert_equal [], array[4,100]
    assert_equal nil, array[5,0]

    #My_test
     assert_equal [:butter, :and, :jelly], array[1,3]
  end
##

ABOUT_CLASSES
#TEST_5 —> def test_you_can_create_accessor_methods_to_return_instance_variables2
def test_you_can_create_accessor_methods_to_return_instance_variables2
    fido = Dog3.new
    fido.set_name("Kevin")

    assert_equal "Kevin", fido.name
  end

ABOUT_OBJECTS
#TEST_6 —> def test_everything_is_an_Object and add 2 test in test_small_integers_have_fixed_ids
   def test_everything_is_an_Object
    assert_equal true, Float.is_a?(Object)
    assert_equal true, -1.is_a?(Object)
    assert_equal true, -1.2.is_a?(Object)
    assert_equal true, Array.new(10) { |i|  }.is_a?(Object)
   end
   #
   def test_small_integers_have_fixed_ids
    assert_equal 1, 0.object_id
    assert_equal 3, 1.object_id
    assert_equal 5, 2.object_id
    assert_equal 201, 100.object_id

    #Test 8
    assert_equal 421, 210.object_id
    assert_equal -3, -2.object_id
    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?
  end
  #

About_asserts
#TEST_7 —> def test_not_increment

def test_not_increment
    i=0
    i++1
    assert_equal 0,i
    i+=1
    assert_equal 1,i
end

About_methods
#Test 8
  class Dragon
     def name
       "Keron"
     end
       private
 
     def pravode
       "pravode"
     end
   end
   #
 
   def test_calling_methods_in_other_objects_require_explicit_receiver
     mode = Dragon.new
     assert_equal "Keron", mode.name
 
   end
 
  def test_calling_private_methods_in_other_objects 
     mode = Dragon.new
     assert_raise(NoMethodError) do
       mode.pravode
   end
  end

About_open_classes
      #Test 9
    def num_of_tails
     1
     end
  end

  def test_as_defined_dogs_do_bark
    fido = Dog.new
    assert_equal "WOOF", fido.bark
    assert_equal 1, fido.num_of_tails
  end