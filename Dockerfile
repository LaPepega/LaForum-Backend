FROM conanio/clang14-ubuntu16.04

#FIXME: conan ERROR: Error in generator 'CMakeDeps': [Errno 13] Permission denied: 'cmakedeps_macros.cmake'
COPY . /LaForum-Backend

WORKDIR /LaForum-Backend

RUN conan install . --output-folder=build --build=missing

RUN cmake .

CMD ["/LaForum-Backend/build/src/LaForum-Backend"]