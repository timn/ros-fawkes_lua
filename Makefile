include $(shell rospack find mk)/cmake.mk

.PHONY: doc
doc:
	rm -rf doc/
	LUA_PATH="./?.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua" \
	luadoc --nofiles -d doc/ -t etc/luadoc src/fawkes/*.lua
	sed -i '/<!-- README -->/ r README' doc/index.html
