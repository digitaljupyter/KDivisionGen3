module main;

// Copyright 2022 kaigonzalez
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import kmath_algorithm;
import std.stdio;

void main()
{
    writeln("[----- DIVISION (no remainders) (old) -----]");
    import std.conv : to;
    float e = basic_division(12, 3);
    float b = 12 / 3;
    writefln("KMath implmentation: %d", to!int(e));
    writefln("D implementation: %f", b);
    
    writeln("[----- DIVISION (remainders) -----]");
    float a = 9 / 5;
    float c = rem_division_v2(9, 5);
    writefln("D implementation: %d", to!int(a));
    writefln("KMath implementation: %d", to!int(c));

    writeln("[----- MULTIPLICATION (x * y) -----]");
    float x = 6 * 8;
    float y = basic_multiplication(6, 8);
    writefln("D implementation: %d", to!int(x));
    writefln("KMath implementation: %d", to!int(y));
}
